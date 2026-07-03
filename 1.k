su:{1!x}
sd:{-1!x}
sl:{-1!'x}
sr:{1!'x}
nb:{u:su x;d:sd x;(sl x)+(sr x)+(sl u)+(sr u)+(sl d)+(sr d)+u+d}
step:{n:nb x;(n=3)|(x&n=2)}

n:20
g:n#,n#0
g[1;2]:1
g[2;3]:1
g[3;1 2 3]:1

pr:{`0:" #"[x];`0:"\n"}
disp:{pr'x;`0:"---\n"}

disp g
i:0
do[20;g:step g;disp g;i:i+1]

\\
