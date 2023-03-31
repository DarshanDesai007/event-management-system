refname = crefname = document.referrer;
dname = document.location.hostname;
cdname = document.location.href;
motif0 = /.*:\/\//;
motif1 = /\/.*$/;
motif2 = / /;
motif4 = /^[^?]+./;
t1 = dname.replace(motif0, " ");
t2 = t1.replace(motif1, '');
t3 = t2.replace(motif2, '');
dname = t3.toLowerCase();
t1 = refname.replace(motif0, " ");
t2 = t1.replace(motif1, '');
t3 = t2.replace(motif2, '');
refname = t3.toLowerCase();
t1 = crefname.replace(motif4, " ");
t2 = t1.replace(motif0, '');
t3 = t2.replace(motif1, '');
crefname = t3.replace(motif2, '');
t1 = cdname.replace(motif4, " ");
t2 = t1.replace(motif0, '');
t3 = t2.replace(motif1, '');
cdname = t3.replace(motif2, '');
if(dname != refname && refname.length > 0 && dname.length > 0) {
	refname = escape(refname);
	dname = escape(dname);
	crefname = escape(crefname);
	cdname = escape(cdname);
	strg = "<IMG SRC='http://tracking.fastbooking.net/fullorigin.phtml?origin="+refname+"&dname="+dname+"&crefname="+crefname+"&cdname="+cdname+"' height='1' width='1'>";
	document.write(strg);
}
if(dname != refname && dname.length > 0) {
	document.write("<IMG SRC='http://tracking.fastbooking.net/visit.phtml?dname="+dname+"' height='1' width='1' border='0'>");
}