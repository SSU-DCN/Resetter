# Resetter

<h2>Origin Git</h2>
<a href="https://github.com/gaining/Resetter">gaining/Resetter</a>

<h2>Requirements</h2>

<ul>
<li>Python3</li>
<li>psutil</li>
<li>bs4</li>
<li>PyQt5(so you need gui or x11 forwarding)</li>
</ul>

<h2>How to use</h2>

<h4>Path</h4>
<code>sudo mv resetter /usr/lib/</code>

<h4>Execute</h4>
- Run Restter.py and click Custom Reset

<code>sudo ./Resetter.py</code>

<h4>effected path</h4>
- Below paths will be effected during custom reset

<ul>
<li>/etc/ (recreate)</li>
<li>/var/lib/ (recreate)</li>
<li>/usr/local/lib (delete)</li>
<li>/usr/local/bin (delete)</li>
</ul>

<h4>How to add custom files</h4>
- Currently only works about /etc/
- zip files with Ubuntu_VERSIONID_64bit_etc_custom.tar.gz that overwrite to /etc/ at data/tars/
