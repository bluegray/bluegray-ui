describe "bluegray UI theme", ->
  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('bluegray-ui')

  it "allows the font size to be set via config", ->
    expect(document.documentElement.style.fontSize).toBe ''

    atom.config.set('bluegray-ui.fontSize', '10')
    expect(document.documentElement.style.fontSize).toBe '10px'

    atom.config.set('bluegray-ui.fontSize', 'Auto')
    expect(document.documentElement.style.fontSize).toBe ''

  it "allows the layout mode to be set via config", ->
    expect(document.documentElement.getAttribute('theme-bluegray-ui-layoutmode')).toBe 'auto'

    atom.config.set('bluegray-ui.layoutMode', 'Spacious')
    expect(document.documentElement.getAttribute('theme-bluegray-ui-layoutmode')).toBe 'spacious'

  it "allows the tab sizing to be set via config", ->
    expect(document.documentElement.getAttribute('theme-bluegray-ui-tabsizing')).toBe 'auto'

    atom.config.set('bluegray-ui.tabSizing', 'Minimum')
    expect(document.documentElement.getAttribute('theme-bluegray-ui-tabsizing')).toBe 'minimum'
