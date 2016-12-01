module.exports = {
  config: {
    fontSize: 15,
    fontFamily: '"Roboto Mono for Powerline", "Lucida Console", monospace',
    cursorColor: 'rgba(248, 28, 229, 1)',
    cursorShape: 'BLOCK', // `BEAM` for |, `UNDERLINE` for _, `BLOCK` for █
    foregroundColor: '#fff',
    backgroundColor: 'rgba(0, 0, 0, 1)',
    borderColor: '#333',
    css: '',
    termCSS: `
    x-screen a {color: rgba(252, 60, 131, 1);}
    x-screen a.hover {text-decoration: underline;}
    `,
    padding: '12px 14px',
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
    shell: '/usr/local/bin/bash',
  },
  plugins: [
    'hyperterm-bold-tab',
    'hyperlinks',
    'hyperterm-close-on-left',
    'hypercwd',
    "hyper-log-actions",
    "hyperyellow",
    "hyperdevine"
  ],
  localPlugins: []
};
