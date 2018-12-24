program select;

var
    v: array of integer;
    i, j, n, nrparc, tmp: integer;

procedure citeste_vector;
    var i: integer;
    begin
        write('dati lungimea vectorului: ');
        read(n);
        SetLength(v, n);

        writeln('dati elementele vectorului: ');
        for i:=1 to n do
            begin
                write('v[',i,']:= ');
                read(v[i]);
            end;
    end;

procedure afiseaza_vector;
    var i: integer;
    begin
        for i:=1 to n do
            begin
                write(v[i],', ');
            end;
        writeln();
    end;


begin

citeste_vector;

writeln('vectorul initial: ');
afiseaza_vector;

nrparc:=0;
for i:=1 to n-1 do
    begin
    nrparc:=nrparc+1;
    writeln('parcurgerea ',nrparc,': ');
    for j:=i+1 to n do
        begin
        if (v[i]>v[j]) then
            begin
                tmp:=v[j];
                v[j]:=v[i];
                v[i]:=tmp;
            end;
        afiseaza_vector;
        end;
    end;

writeln('vectorul final: ');
afiseaza_vector;

end.
