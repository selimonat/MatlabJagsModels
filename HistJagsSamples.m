function HistJagsSamples(S)

%plot histograms of the bugs results
f = fieldnames(S);
tf = length(f);
[y x] = GetSubplotNumber(tf);
figure(2);
clf;
for nf = 1:tf
    if ndims(S.(f{nf})) == 2
        subplot(y,x,nf);    
        hist(S.(f{nf})',1000);
        title(f{nf},'interpreter','none');
        drawnow;
    end
end

%
