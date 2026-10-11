<div align="center">
  <img src="https://www.scheduleonegame.com/presskit/schedule-one/images/header.png" alt="Schedule I" width="700">
  <h1 align="center">Auto-Sleep</h1>
  <p>
    An <a href="https://www.autohotkey.com/">AutoHotkey v2</a> script for
    <strong>Schedule I</strong> that sleeps through each day for you,<br>
    so you can stay AFK while your dealers keep dealing.
  </p>
  <p>
    <kbd>F8</kbd> start / stop &nbsp;-&nbsp; <kbd>F9</kbd> quit
  </p>
</div>

<h2>Requirements</h2>

<ul>
  <li><a href="https://www.autohotkey.com/download/ahk-v2.exe">AutoHotkey v2</a></li>
  <li>
    Schedule I running in <strong>1920x1080 fullscreen</strong> (not exclusive fullscreen),
    since button positions are hard-coded screen coordinates
  </li>
</ul>

<h2>Usage</h2>

<ol>
  <li>Get on your bed and look down.</li>
  <li>Run the script (<code>auto-sleep.ahk</code>).</li>
  <li>
    Press <kbd>F8</kbd> once it is <strong>6:00 PM or later</strong> in game
    (when you can sleep).
  </li>
  <li>Press <kbd>F8</kbd> again to pause, or <kbd>F9</kbd> to quit the script.</li>
</ol>
<p>If clicks don't register in the game, run the script as administrator.</p>

<h2>Calibration</h2>

<ul>
  <li>
    <strong>Button positions:</strong> use Window Spy (included with AutoHotkey)
    to read the mouse position over each button, then update the coordinates.
  </li>
  <li>
    <strong><code>sleepInterval</code>:</strong> time one full in-game day with a stopwatch
    and convert it to milliseconds. The default is 21 min 03 s (<code>1263000</code>),
    which matches one full day on my setup.
  </li>
</ul>

<h2>Notes</h2>

<ul>
  <li>
    If the key is pressed before 6:00 PM in game, the game refuses to sleep and the
    following clicks land on the game view, so start the script at the right time.
  </li>
  <li>This script only simulates keyboard and mouse input. Use it at your own risk.</li>
</ul>

<div>
  <sub>Unofficial fan-made tool, not affiliated with <a href="http://tvgs-games.com/">TVGS</a>.  
The logo comes from the official Schedule I <a href="https://www.scheduleonegame.com/presskit/schedule-one/index.html">press kit</a> and belongs to its owners.</sub>
</div>


---

<div align="center">
 <p>Made with ♥️ by faydonK</p>
 </div>