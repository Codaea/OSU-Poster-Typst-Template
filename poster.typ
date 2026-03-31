#let primary-color = rgb("#D73F09") // OSU Beaver Orange
// black and white are 000000 or FFFFFF

#set page(
    paper: "arch-e", // 36" x 48"
    flipped: true, // set to landscape
    margin: (top: 0pt, rest: 1in) // no top margin for header, 1in margins for sides/bottom
)

// Set up OSU fonts for body text (Kievit for body copy)
#set text(
  font: "Kievit",
  size: 24pt
)

// Set up heading styles with Stratum 2
#show heading.where(level: 1): set text(
  font: "Stratum 2",
  size: 36pt,
  weight: "bold"
)

#show heading.where(level: 2): set text(
  font: "Stratum 2",
  size: 24pt,
  weight: "regular"
)

#show heading.where(level: 3): 

// Orange header section
#place(
  top,
  block(
    width: 46.0in, // full width
    height: 7.3245in, // pulled from OSU undergrad templates
    fill: rgb("#D73F09"), // OSU Beaver Orange
    inset: (x: 2em, y: 2em),
    outset: (x: 1in), // extend to page edges
  )[
    #set text(fill: white, font: "Stratum 2")
    #set align(center)

    #text(size: 85pt, weight: "bold")[
      Your Poster Title Here
    ]

    #v(0.5em)

    #text(size: 56pt, font: "Kievit")[
        Your authorship here, Include University or Department Names if Needed
    ]

    #place(
    top + right,
    dx: 0in,
    dy: 1in,
    image("logo.png", width: 4.5in)
    )
  ]
)

// Add space for the header
#v(7.3245in)

// Main content grid - 3 columns
#grid(
  columns: (1fr, 2fr, 1fr), // 3 equal columns
  gutter: 1in, // space between columns

  // Column 1
  [
    #block(
      fill: luma(240),
      inset: 1em,
      radius: 4pt,
    )[
      == Section Title
      Your content here. This is where your introduction, methods, or other content goes.
    ]

    #v(1em)

    #block(
      fill: luma(240),
      inset: 1em,
      radius: 4pt,
    )[
      == Another Section
      More content here.
    ]
  ],

  // Column 2
  [
    #block(
      fill: luma(240),
      inset: 1em,
      radius: 4pt,
    )[
      == Results
      Your results content here.
    ]
  ],

  // Column 3
  [
    #block(
      fill: luma(240),
      inset: 1em,
      radius: 4pt,
    )[
      == Discussion
      Your discussion content here.
    ]

    #v(1em)

    #block(
      fill: luma(240),
      inset: 1em,
      radius: 4pt,
    )[
      == Conclusion
      Your conclusion here.
    ]
  ]
)
