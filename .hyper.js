// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.

module.exports = {
  config: {
    updateChannel: 'stable',
    fontSize: 15,
    fontFamily: '"Fira Mono for Powerline", "Lucida Console", monospace',
    cursorColor: 'rgba(248,28,229,0.8)',
    cursorShape: 'BLOCK', // `BEAM` for |, `UNDERLINE` for _, `BLOCK` for █
    cursorBlink: false,
    foregroundColor: '#fff',
    backgroundColor: '#282A36',
    borderColor: '#333',
    padding: '12px 14px',
    colors: {
      black: '#000000',
      red: '#ff0000',
      green: '#33ff00',
      yellow: '#ffff00',
      blue: '#0066ff',
      magenta: '#cc00ff',
      cyan: '#00ffff',
      white: '#d0d0d0',
      lightBlack: '#808080',
      lightRed: '#ff0000',
      lightGreen: '#33ff00',
      lightYellow: '#ffff00',
      lightBlue: '#0066ff',
      lightMagenta: '#cc00ff',
      lightCyan: '#00ffff',
      lightWhite: '#ffffff'
    },
    shell: '/usr/local/bin/bash',
    shellArgs: ['--login'],
    env: {},
    bell: 'SOUND',
    copyOnSelect: false,
    hyperTabs: {
      trafficButtons: true,
      border: true,
      tabIconsColored: true,
      activityColor: "#ED8492",
      closeAlign: 'right',
    }
    // bellSoundURL: 'http://example.com/bell.mp3',
  },
  plugins: [
    "hypercwd",
    "hyper-tabs-enhanced",
    "hyper-chesterish",
    "hyper-statusline",
    "hyper-confirm",
    "hyper-quit",
    "hyperlinks",
    "hyper-snazzy"
  ],
  localPlugins: [],
  keymaps: {
    // Example
    // 'window:devtools': 'cmd+alt+o',
  }
};
