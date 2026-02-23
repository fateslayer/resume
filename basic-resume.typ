#import "@preview/basic-resume:0.2.9": *

// === Configuration ===
#let config = (
  name: "Stephen Xu",
  location: "San Diego, CA",
  email: "stxu@hmc.edu",
  github: "github.com/stuxf",
  linkedin: "linkedin.com/in/stuxf",
  phone: "+1 (xxx) xxx-xxxx",
  personal-site: "stuxf.dev",
)

#let dates(start, end) = dates-helper(start-date: start, end-date: end)

// === Resume Setup ===
#show: resume.with(
  author: config.name,
  location: config.location,
  email: config.email,
  github: config.github,
  linkedin: config.linkedin,
  phone: config.phone,
  personal-site: config.personal-site,
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "us-letter",
  author-position: left,
  personal-info-position: left,
)

// === Skills ===
== Skills
- *Programming Languages*: JavaScript, Python, C/C++, HTML/CSS, Java, Bash, R, Flutter, Dart
- *Technologies*: React, Astro, Svelte, Tailwind CSS, Git, UNIX, Docker, Caddy, NGINX, Google Cloud Platform

// === Work Experience ===
== Work Experience

#work(
  title: "Subatomic Shepherd and Caffeine Connoisseur",
  location: "Atomville, CA",
  company: "Microscopic Circus, Schrodinger's University",
  dates: dates("May 2024", "Present"),
)
- Played God with tiny molecules, making them dance to uncover the secrets of the universe
- Convinced high-performance computers to work overtime without unions, reducing simulation time by 50%
- Wowed a room full of nerds with pretty pictures of invisible things and imaginary findings

#work(
  title: "AI Wrangler and Code Ninja",
  location: "Silicon Mirage, CA",
  company: "Organic Stupidity Startup",
  dates: dates("Dec 2023", "Mar 2024"),
)
- Taught robots to predict when (and how much!) humans will empty their wallets at the doctor's office
- Developed HIPAA-compliant digital signatures, because doctors' handwriting wasn't illegible enough already
- Turned spaghetti code into a gourmet dish, making other interns drool with envy

#work(
  title: "Digital Playground Architect",
  location: "The Cloud",
  company: "Pixels & Profit Interactive",
  dates: dates("Jun 2020", "May 2023"),
)
- Scaled user base from 10 to 2000+, accidentally becoming a small wealthy nation in the process
- Crafted Bash scripts so clever they occasionally made other engineers weep with joy
- Automated support responses, reducing human interaction to a level that would make introverts proud
- Built a documentation site that actually got read, breaking the ancient RTFM curse

#work(
  title: "Code Conjurer Intern",
  location: "Silicon Suburb, CA",
  company: "Bits & Bytes Consulting",
  dates: dates("Jun 2022", "Aug 2022"),
)
- Developed a cross-platform mobile app that turned every user into a potential paparazzi
- Led a security overhaul, heroically saving the company from the menace of "password123"

// === Projects ===
== Projects

#project(
  name: "Hyperschedule",
  role: "Maintainer",
  dates: dates("Nov 2023", "Present"),
  url: "hyperschedule.io",
)
- Maintain open-source scheduler used by 7000+ users at the Claremont Consortium with TypeScript, React and MongoDB
  - Manage PR reviews, bug fixes, and coordinate with college for releasing scheduling data and over \$1500 of yearly funding
- Ensure 99.99% uptime during peak loads of 1M daily requests during course registration through redundant servers

// === Extracurricular Activities ===
// == Extracurricular Activities
//
// #extracurriculars(
//   activity: "Capture The Flag Competitions",
//   dates: dates("Jan 2021", "Present"),
// )
// - Founder of Les Amateurs (#link("https://amateurs.team")[amateurs.team]), currently ranked \#4 US, \#33 global on CTFTime (2023: \#4 US, \#42 global)
// - Organized AmateursCTF 2023 and 2024, with 1000+ teams solving at least one challenge and \$2000+ in cash prizes
//   - Scaled infrastructure using GCP, Digital Ocean with Kubernetes and Docker; deployed custom software on fly.io
// - Qualified for DEFCON CTF 32 and CSAW CTF 2023, two of the most prestigious cybersecurity competitions globally
//
// #extracurriculars(
//   activity: "Science Olympiad Volunteering",
//   dates: "Sep 2023 --- Present"
// )
// - Volunteer and write tests for tournaments, including LA Regionals and SoCal State \@ Caltech

// #certificates(
//   name: "OSCP",
//   issuer: "Offensive Security",
//   // url: "",
//   date: "Oct 2024",
// )

// === Education ===
== Education

#edu(
  institution: "Harvey Mudd College",
  location: "Claremont, CA",
  dates: dates("Aug 2023", "May 2027"),
  degree: "Bachelor's of Science, Computer Science and Mathematics",

  // Uncomment the line below if you want edu formatting to be consistent with everything else
  // consistent: true
)
- Cumulative GPA: 4.0\/4.0 | Dean's List, Harvey S. Mudd Merit Scholarship, National Merit Scholarship
- Relevant Coursework: Data Structures, Program Development, Microprocessors, Abstract Algebra I: Groups and Rings, Linear Algebra, Discrete Mathematics, Multivariable & Single Variable Calculus, Principles and Practice of Comp Sci
