clc
clear all
close all

x = 1:1:11;

Bgen1  = [10.8652969472 5.32130824359 4.14229003472 12.7891071381 3.92490614021 1.809127975 2.38484149282 1.3974928553 1.25662901724 1.51045202851 10.870810378 2.02680052371 3.09726585296 1.0703124193 4.25356668761];
Bgen2  = [0.5105164019 0.706618837322 0.828966306862 0.928619456236 1.0703124193 1.25199274359 1.25662901724 1.80935486682 3.09726585296 3.92490614021 2.38484149282 1.3974928553 2.02680052371 1.809127975 1.61968615327];
Bgen3  = [0.31558362821 0.5105164019 0.556666624126 0.628338230343 0.706618837322 0.798144235451 0.828966306862 1.05868480012 1.809127975 1.61968615327 1.25199274359 1.0703124193 1.7647443215 2.02680052371 1.25662901724];
Bgen4  = [0.31558362821 0.5105164019 0.556666624126 0.628338230343 0.628338230343 0.706618837322 0.746208318954 1.0703124193 1.61968615327 0.823601874062 1.35987630698 1.25662901724 0.798144235451 1.15340944251 1.7647443215];
Bgen5  = [0.208078169788 0.31558362821 0.5105164019 0.556666624126 0.610055814879 0.628338230343 0.628338230343 0.750205739415 1.25662901724 0.826533378612 0.706618837322 1.14869515223 1.0703124193 1.15340944251 0.746208318954];    
Bgen6  = [0.208078169788 0.31558362821 0.495871598833 0.5105164019 0.556666624126 0.610055814879 0.628338230343 0.650579255429 0.746208318954 0.856476845111 1.15340944251 1.0703124193 0.706618837322 0.826533378612 0.859469964209];
Bgen7  = [0.208078169788 0.31395958641 0.31558362821 0.354891525561 0.495871598833 0.5105164019 0.556666624126 1.0703124193 0.789096759812 0.826533378612 0.610055814879 0.859469964209 1.12694335403 0.856476845111 0.628338230343];
Bgen8  = [0.208078169788 0.227231348874 0.31395958641 0.31558362821 0.354891525561 0.456660539849 0.49587159883 0.5105164019 0.574329628951 0.826533378612 0.556666624126 0.856476845111 0.610055814879 0.702328278675 0.859469964209];
Bgen9  = [0.208078169788 0.227231348874 0.267744739493 0.31395958641 0.31558362821 0.35066271935 0.354891525561 0.368192291121 0.574329628951 0.433753946289 0.456660539849 0.556666624126 0.52814951805 0.364391080449 0.357000306215];
Bgen10 = [0.208078169788 0.227231348874 0.227231348874 0.227231348874 0.258258228419 0.267744739493 0.31395958641 0.364391080449 0.574329628951 0.52814951805 0.556666624126 0.357000306215 0.354891525561 0.35066271935 0.433753946289];
Bgen11 = [0.208078169788 0.223113870467 0.227231348874 0.227231348874 0.227231348874 0.227231348874 0.258258228419 0.610317373276 0.686562516326 0.35066271935 0.52814951805 0.433753946289 0.31395958641 0.364391080449 0.478596855991];

Cgen1  = [17.0975534668 3.89134029876 5.47024060436 8.00351373937 3.73505224841 2.77847253516 5.96091648574 4.33891824876 1.77252943014 0.831231870865 6.91708962777 1.85207733116 3.56540584447 3.08730149782 5.36051442545];
Cgen2  = [0.831231870865 1.20852599293 1.28430282246 1.77252943014 1.85207733116 2.00840803936 2.43431536604 3.89134029876 5.45577368908 5.36051442545 5.47024060436 3.56540584447 3.73505224841 5.41311253899 2.87118535126];
Cgen3  = [0.130870897997 0.831231870865 1.04367338285 1.20852599293 1.28430282246 1.28430282246 1.77252943014 2.87118535126 2.08297271129 3.56540584447 2.43431536604 2.07152468864 2.51657320464 2.72485445399 2.16178486864];
Cgen4  = [0.130870897997 0.324345972976 0.501846776734 0.831231870865 1.04367338285 1.0901281666 1.16294850535 1.77252943014 2.51657320464 2.07152468864 1.55091400999 1.69512362327 2.43431536604 1.28430282246 2.16178486864];
Cgen5  = [0.130870897997 0.324345972976 0.501846776734 0.672614302241 0.683750300905 0.831231870865 1.04367338285 2.30258235168 1.77252943014 1.55091400999 2.07152468864 1.64390826625 1.16294850535 1.69512362327 1.06528769796];
Cgen6  = [0.130870897997 0.324345972976 0.501846776734 0.672614302241 0.683750300905 0.767082898086 0.831231870865 1.55091400999 1.64390826625 1.46793664711 1.95929632349 2.07152468864 1.16294850535 1.04367338285 2.01610898221];
Cgen7  = [0.130870897997 0.139489097455 0.185973631593 0.324345972976 0.38857274847 0.501846776734 0.633275039928 1.04367338285 1.96281649374 0.767082898086 2.01610898221 1.46793664711 0.831231870865 0.672614302241 1.64390826625];
Cgen8  = [0.112441223188 0.130870897997 0.139489097455 0.185973631593 0.324345972976 0.388556596545 0.38857274847 0.672614302241 0.767082898086 1.96281649374 0.831231870865 0.531394573173 0.501846776734 0.704562047604 0.633275039928];
Cgen9  = [0.112441223188 0.130870897997 0.139489097455 0.185973631593 0.264991879258 0.324345972976 0.388556596545 0.704562047604 1.55225135282 0.531394573173 0.767082898086 0.672614302241 0.38857274847 0.722816799056 0.777028745598];
Cgen10 = [0.112441223188 0.130870897997 0.139489097455 0.185973631593 0.264991879258 0.270209089957 0.324345972976 0.692965887832 0.777028745598 1.49106372677 1.1815831278 0.531394573173 0.388556596545 0.767082898086 0.383444920303];
Cgen11 = [0.112441223188 0.130870897997 0.139489097455 0.146624092952 0.185973631593 0.264991879258 0.270209089957 0.692965887832 0.271166057465 0.383444920303 1.49106372677 1.1815831278 0.388556596545 0.777028745598 1.35577174055];

Dgen1  = [17.174159308 5.01209167123 2.62149388529 10.3814555875 7.17241325875 0.935128310313 2.77321773102 0.98947961146 2.05644940006 2.56353555856 8.85368126144 0.95616320612 5.91817888818 0.706335551083 3.67039751554];
Dgen2  = [0.706335551083 0.837293853909 0.935128310313 0.95616320612 0.98947961146 0.98947961146 1.36522750144 3.67039751554 2.43394636907 7.17241325875 2.56353555856 2.13841662919 2.62149388529 2.05644940006 3.37950276473];
Dgen3  = [0.505938388298 0.706335551083 0.745364877121 0.837293853909 0.891787744345 0.893749675764 0.935128310313 2.56353555856 1.8539835223 1.36522750144 1.17584064145 1.43278829074 0.98947961146 0.95616320612 2.62149388529];
Dgen4  = [0.505938388298 0.554232413568 0.706335551083 0.745364877121 0.837293853909 0.891787744345 0.893749675764 1.8539835223 0.98947961146 1.00424998499 1.43278829074 1.44098686654 0.95616320612 0.935128310313 1.2520744622];
Dgen5  = [0.161416904731 0.246024322384 0.389515010672 0.442202590879 0.505938388298 0.554232413568 0.629804833267 1.19240218688 0.893749675764 0.891787744345 0.837293853909 1.44098686654 0.706335551083 0.98947961146 0.745364877121];
Dgen6  = [0.161416904731 0.246024322384 0.389515010672 0.406782880182 0.442202590879 0.505938388298 0.554232413568 1.22233501181 1.44098686654 0.629804833267 0.98947961146 0.891787744345 1.19240218688 0.745364877121 1.03568635844];
Dgen7  = [0.161416904731 0.246024322384 0.280557029585 0.389515010672 0.406782880182 0.435440609666 0.442202590879 0.505938388298 0.891787744345 0.629804833267 1.03277437747 1.36960714435 1.03568635844 1.19240218688 0.98947961146];
Dgen8  = [0.0469083430663 0.161416904731 0.246024322384 0.280557029585 0.389515010672 0.406782880182 0.435440609666 0.98947961146 0.442202590879 0.891787744345 0.488341073884 1.32093388292 0.458558837934 1.03568635844 1.19240218688];
Dgen9  = [0.0469083430663 0.161416904731 0.246024322384 0.268154889699 0.280557029585 0.343088768329 0.352303890888 0.442202590879 0.389515010672 1.19240218688 1.03568635844 1.32093388292 0.435440609666 0.488341073884 1.54323663219];
Dgen10 = [0.0469083430663 0.0469083430663 0.161416904731 0.207290659214 0.246024322384 0.262297438458 0.268154889699 1.19240218688 1.14762894373 0.435798678502 0.316765442659 1.03568635844 0.435440609666 0.352303890888 0.376473393425];
Dgen11 = [0.0469083430663 0.0469083430663 0.161416904731 0.207290659214 0.246024322384 0.259333081459 0.262297438458 0.376473393425 0.271790655014 0.811161016957 0.435440609666 0.331643770133 0.435798678502 0.352303890888 0.563588938902];

Egen1  = [22.2739113865 4.86667822269 3.04698158068 8.70897781258 4.51986277392 2.56960011668 3.44870927963 2.13138567584 1.61631253579 0.805924904498 10.167990083 1.56340957071 5.0073842625 2.68709601709 5.65596249651];
Egen2  = [0.360964058173 0.599202600349 0.805924904498 1.03102300937 1.56340957071 1.61631253579 1.93227625834 2.68709601709 4.51986277392 2.56960011668 5.0073842625 2.6344546983 5.65596249651 3.04698158068 3.44870927963];
Egen3  = [0.360964058173 0.599202600349 0.679536667403 0.686916116266 0.805924904498 1.03102300937 1.3112397859 1.695793474 1.60987993501 3.04698158068 2.68709601709 1.61631253579 1.89015161955 1.93227625834 2.56960011668];
Egen4  = [0.360964058173 0.501932168607 0.599202600349 0.679536667403 0.686916116266 0.688861269065 0.805924904498 1.89015161955 1.3112397859 1.695793474 1.61631253579 1.03102300937 1.56549177332 1.29163916935 1.60987993501];
Egen5  = [0.360964058173 0.491625192159 0.501932168607 0.562637072299 0.599202600349 0.614040715543 0.679536667403 1.03102300937 0.688861269065 0.686916116266 1.82724193275 0.805924904498 1.695793474 1.29163916935 1.60987993501];
Egen6  = [0.360964058173 0.466433940845 0.491625192159 0.501932168607 0.562637072299 0.599202600349 0.606030736175 0.845768649507 0.91832353891 0.614040715543 0.679536667403 0.688861269065 0.686916116266 1.695793474 1.29163916935];
Egen7  = [0.33242955326 0.360964058173 0.466433940845 0.491625192159 0.499607722508 0.501932168607 0.562637072299 0.606030736175 0.599202600349 1.29163916935 0.656265419409 0.686916116266 0.845768649507 0.807005108202 0.905357860563];
Egen8  = [0.283425357497 0.33242955326 0.360964058173 0.466433940845 0.491625192159 0.499607722508 0.501932168607 0.686916116266 0.546500988729 0.90535786056 0.807005108202 0.606030736175 0.656265419409 0.845768649507 0.787227037829];
Egen9  = [0.100627486158 0.158082408823 0.283425357497 0.33242955326 0.360964058173 0.433428772441 0.445554429838 0.603893505944 0.787227037829 0.499607722508 0.656265419409 0.454203320575 0.501932168607 0.807005108202 0.622342655702];
Egen10 = [0.100627486158 0.158082408823 0.283425357497 0.325259037667 0.33242955326 0.360964058173 0.423840771906 0.622342655702 0.433428772441 0.807005108202 0.863505070995 0.603893505944 0.445554429838 0.55429604113 0.501932168607];
Egen11 = [0.100627486158 0.142413157895 0.158082408823 0.283425357497 0.325259037667 0.33242955326 0.360964058173 0.554296041133 0.863505070995 0.603893505944 0.622342655702 0.423840771906 0.429362927367 0.394108972569 0.445554429838];

Fdata = zeros(8,15);
for k=1:8
    f = load(['GenerationFiles/generationsF/Generation' num2str(k) '.txt']);
    Fdata(k,:) = f(:,2);
end

Gdata = zeros(8,15);
for k=1:8
    g = load(['GenerationFiles/generationsG/Generation' num2str(k) '.txt']);
    Gdata(k,:) = g(:,2);
end

Hdata = zeros(8,15);
for k=1:8
    h = load(['GenerationFiles/generationsH/Generation' num2str(k) '.txt']);
    Hdata(k,:) = h(:,2);
end

Fmeans = mean(Fdata,2);
Gmeans = mean(Gdata,2);
Hmeans = mean(Hdata,2);

Fmins = min(Fdata,[],2);
Gmins = min(Gdata,[],2);
Hmins = min(Hdata,[],2);

Fmaxs = max(Fdata,[],2);
Gmaxs = max(Gdata,[],2);
Hmaxs = max(Hdata,[],2);

B = [mean(Bgen1) mean(Bgen2) mean(Bgen3) mean(Bgen4) mean(Bgen5) mean(Bgen6) mean(Bgen7) mean(Bgen8) mean(Bgen9) mean(Bgen10) mean(Bgen11)]
C = [mean(Cgen1) mean(Cgen2) mean(Bgen3) mean(Cgen4) mean(Cgen5) mean(Cgen6) mean(Cgen7) mean(Cgen8) mean(Cgen9) mean(Cgen10) mean(Cgen11)]
D = [mean(Dgen1) mean(Dgen2) mean(Dgen3) mean(Dgen4) mean(Dgen5) mean(Dgen6) mean(Dgen7) mean(Dgen8) mean(Dgen9) mean(Dgen10) mean(Dgen11)]
E = [mean(Egen1) mean(Egen2) mean(Egen3) mean(Egen4) mean(Egen5) mean(Egen6) mean(Egen7) mean(Egen8) mean(Egen9) mean(Egen10) mean(Egen11)]

NegBerr = abs(B - [min(Bgen1) min(Bgen2) min(Bgen3) min(Bgen4) min(Bgen5) min(Bgen6) min(Bgen7) min(Bgen8) min(Bgen9) min(Bgen10) min(Bgen11)]);
NegCerr = abs(C - [min(Cgen1) min(Cgen2) min(Cgen3) min(Cgen4) min(Cgen5) min(Cgen6) min(Cgen7) min(Cgen8) min(Cgen9) min(Cgen10) min(Cgen11)]);
NegDerr = abs(D - [min(Dgen1) min(Dgen2) min(Dgen3) min(Dgen4) min(Dgen5) min(Dgen6) min(Dgen7) min(Dgen8) min(Dgen9) min(Dgen10) min(Dgen11)]);
NegEerr = abs(E - [min(Egen1) min(Egen2) min(Egen3) min(Egen4) min(Egen5) min(Egen6) min(Egen7) min(Egen8) min(Egen9) min(Egen10) min(Egen11)]);

PosBerr = abs(B - [max(Bgen1) max(Bgen2) max(Bgen3) max(Bgen4) max(Bgen5) max(Bgen6) max(Bgen7) max(Bgen8) max(Bgen9) max(Bgen10) max(Bgen11)]);
PosCerr = abs(C - [max(Cgen1) max(Cgen2) max(Cgen3) max(Cgen4) max(Cgen5) max(Cgen6) max(Cgen7) max(Cgen8) max(Cgen9) max(Cgen10) max(Cgen11)]);
PosDerr = abs(D - [max(Dgen1) max(Dgen2) max(Dgen3) max(Dgen4) max(Dgen5) max(Dgen6) max(Dgen7) max(Dgen8) max(Dgen9) max(Dgen10) max(Dgen11)]);
PosEerr = abs(E - [max(Egen1) max(Egen2) max(Egen3) max(Egen4) max(Egen5) max(Egen6) max(Egen7) max(Egen8) max(Egen9) max(Egen10) max(Egen11)]);

hold on
errorbar(x, B, NegBerr, PosBerr, '--o')
errorbar(x, C, NegCerr, PosCerr, '--o')
errorbar(x, D, NegDerr, PosDerr, '--o')
errorbar(x, E, NegEerr, PosEerr, '--o')
legend('Agent B', 'Agent C', 'Agent D', 'Agent E')
xlabel('Generation Number')
ylabel('Mean Minimum Distance (m)')
xlim([0,12])

figure
hold on
errorbar(1:8,Fmeans,Fmeans-Fmins,Fmeans+Fmaxs,'--o')
errorbar(1:8,Gmeans,Gmeans-Gmins,Gmeans+Gmaxs,'--o')
errorbar(1:8,Hmeans,Hmeans-Hmins,Hmeans+Hmaxs,'--o')
legend('Agent F', 'Agent G', 'Agent H')
xlabel('Generation Number')
ylabel('Mean Minimum Distance (m)')
xlim([0,9])

