program bubble;

var
    v: array of integer;
    i, n, nrparc, tmp: integer;
    inv: boolean;

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
repeat
    // incepem o parcurgere
    inv:=false;
    nrparc:=nrparc+1; // la fiecare parcurgere nrparc va creste
    writeln('parcurgerea ',nrparc,': ');
    for i:=1 to n-nrparc do // iar numarul elementelor parcurse va scadea
        begin
            if(v[i]>v[i+1]) then
                // facem o inversare
                begin
                    tmp:=v[i+1];
                    v[i+1]:=v[i];
                    v[i]:=tmp;
                    inv:=true;
                end;
            afiseaza_vector;
        end;
until inv=false;

writeln('vectorul final: ');
afiseaza_vector;

end.
