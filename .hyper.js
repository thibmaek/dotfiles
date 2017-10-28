// for advanced config flags please refer to https://hyper.is/#cfg
module.exports = {
  config: {
    fontSize: 15,
    fontFamily: '"Roboto Mono for Powerline", "Lucida Console", monospace',
    cursorColor: 'rgba(248,28,229,0.8)', // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    cursorShape: 'BLOCK', // `BEAM` for |, `UNDERLINE` for _, `BLOCK` for █
    cursorBlink: true,
    foregroundColor: '#fff', // color of the text
    backgroundColor: '#000', // terminal background color
    borderColor: '#333', // border color (window, tabs)
    css: `
      .term_fit:not(.term_term) { opacity: .6; }
      .term_fit.term_active {
        opacity: 1;
        transition: opacity 0.12s ease-in-out;
        will-change: opacity;
      }
    `,
    termCSS: `
      x-screen a { color: rgba(252, 60, 131, 1); }
      x-screen a.hover { text-decoration: underline; }
    `,
    // set to `true` (without backticks) if you're using a Linux setup that doesn't show native menus
    // default: `false` on Linux, `true` on Windows (ignored on macOS)
    showHamburgerMenu: '',
    // set to `false` if you want to hide the minimize, maximize and close buttons
    // additionally, set to `'left'` if you want them on the left, like in Ubuntu
    // default: `true` on windows and Linux (ignored on macOS)
    showWindowControls: '',
    padding: '12px 14px',
    // the full list. if you're going to provide the full color palette,
    // including the 6 x 6 color cubes and the grayscale map, just provide
    // an array here instead of a color map object
    colors: {
      black: 'rgba(46, 46, 46, 1)',
      red: 'rgba(236, 35, 66, 1)',
      green: 'rgba(130, 188, 51, 1)',
      yellow: 'rgba(255, 195, 45, 1)',
      blue: 'rgba(52, 100, 163, 1)',
      magenta: 'rgba(229, 23, 113, 1)',
      cyan: 'rgba(25, 163, 162, 1)',
      white: 'rgba(248, 249, 254, 1)',
      lightBlack: 'rgba(87, 75, 79, 1)',
      lightRed: 'rgba(210, 55, 75, 1)',
      lightGreen: 'rgba(138, 215, 177, 1)',
      lightYellow: 'rgba(254, 217, 105, 1)',
      lightBlue: 'rgba(29, 174, 237, 1)',
      lightMagenta: 'rgba(254, 188, 208, 1)',
      lightCyan: 'rgba(128, 235, 252, 1)',
      lightWhite: 'rgba(243, 243, 243, 1)'
    },
    // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
    // if left empty, your system's login shell will be used by default
    // make sure to use a full path if the binary name doesn't work
    // (e.g `C:\\Windows\\System32\\bash.exe` instead of just `bash.exe`)
    // if you're using powershell, make sure to remove the `--login` below
    shell: '/usr/local/bin/bash',
    // for setting shell arguments (i.e. for using interactive shellArgs: ['-i'])
    // by default ['--login'] will be used
    shellArgs: ['--login'],
    env: {}, // for environment variables
    bell: 'SOUND', // set to false for no bell
    copyOnSelect: false // if true, selected text will automatically be copied to the clipboard
    // if true, on right click selected text will be copied or pasted if no
    // selection is present (true by default on Windows)
    // quickEdit: true
    // bellSoundURL: 'http://example.com/bell.mp3', // URL to custom bell
  },
  plugins: [
    'hyperlinks',
    'hypercwd',
    "hyper-statusline",
    "hyperlayout",
    "hyperterm-alternatescroll",
    "hyper-tab-icons",
    "hyper-simple-vibrancy",
    "hyper-material",
    "hyper-search",
    "hyper-quit",
    "hyper-confirm"
  ],
  localPlugins: []
};
