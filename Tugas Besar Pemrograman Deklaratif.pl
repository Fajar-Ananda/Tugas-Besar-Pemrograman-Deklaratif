%TUGAS BESAR PEMROGRAMAN DEKLARATIF SISTEM PEMBERI SARAN PENGAMBILAN MATAKULIAH
:- use_module(library(jpl)).
start :-sleep(0.2),
write("###################||| Sistem Saran Pengambilan Matakuliah |||#########################"),nl,

interfaceMK2.
mk(Mhs,ipk0) :- verify(Mhs,"Apakah IPK mu Sebelumnya diantara 0,00 - 1,49 (y/n) ?").
mk(Mhs,ipk1) :- verify(Mhs,"Apakah IPK mu Sebelumnya diantara 1,50 - 1,99 (y/n) ?").
mk(Mhs,ipk2) :- verify(Mhs,"Apakah IPK mu Sebelumnya diantara 2,00 - 2,49 (y/n) ?").
mk(Mhs,ipk3) :- verify(Mhs,"Apakah IPK mu Sebelumnya diantara 2,50 - 2,99 (y/n) ?").
mk(Mhs,ipk4) :- verify(Mhs,"Apakah IPK mu Sebelumnya diantara 3,00 - 4,00 (y/n) ?").


mk(Mhs,ipk00) :- verify(Mhs,"Jumlah SKS yang bisa diambil adalah maks 12 SKS. Berikut Matakuliah yang WAJIB untuk diambil untuk memaksimalkan SKS.").
mk(Mhs,ipk11) :- verify(Mhs,"Jumlah SKS yang bisa diambil adalah maks 15 SKS. Berikut Matakuliah yang WAJIB untuk diambil untuk memaksimalkan SKS.").
mk(Mhs,ipk22) :- verify(Mhs,"Jumlah SKS yang bisa diambil adalah maks 18 SKS. Berikut Matakuliah yang WAJIB untuk diambil untuk memaksimalkan SKS.").
mk(Mhs,ipk33) :- verify(Mhs,"Jumlah SKS yang bisa diambil adalah maks 21 SKS. Berikut Matakuliah yang WAJIB untuk diambil untuk memaksimalkan SKS.").
mk(Mhs,ipk44) :- verify(Mhs,"Jumlah SKS yang bisa diambil adalah maks 24 SKS. Berikut Matakuliah yang WAJIB untuk diambil untuk memaksimalkan SKS.").



    mk(Mhs,komnum) :- verify(Mhs,"Apakah Kamu Ingin Mengambil MK Komputasi Numerik SKS 3 (y/n) ?").

    mk(Mhs,grafkom) :- verify(Mhs," Apakah Kamu Ingin Mengambil MK Grafika Komputer SKS 3 (y/n) ?").

    mk(Mhs,pemdek) :- verify(Mhs," Apakah Kamu Ingin Mengambil MK Pemrograman Deklaratif SKS 3 (y/n) ?").

   mk(Mhs,probabil) :- verify(Mhs," Apakah Kamu Ingin Mengambil MK Probabilitas dan Statistik SKS 3 (y/n) ?").

   mk(Mhs,rpl) :- verify(Mhs," Apakah Kamu Ingin Mengambil MK Rekayasa Perangkat Lunak SKS 3(y/n) ?").

    mk(Mhs,kdjk) :- verify(Mhs," Apakah Kamu Ingin Mengambil MK Komunikasi Data dan Jaringan Komputer SKS 3 (y/n) ?").
    mk(Mhs,tambah1) :- verify(Mhs," Apakah Kamu Ingin Mengambil MK Manajemen Inovasi SKS 3 (y/n) ?").
    mk(Mhs,tambah2) :- verify(Mhs," Apakah Kamu Ingin Mengambil MK Mobile dan Wireless Computing SKS 3 (y/n) ?").


    analisis(Mhs,ipk_sangatbaik_Pertahankan) :-
        mk(Mhs,ipk4),
	mk(Mhs,ipk44),
        mk(Mhs,komnum),
        mk(Mhs,grafkom),
        mk(Mhs,pemdek),
        mk(Mhs,probabil),
        mk(Mhs,rpl),
        mk(Mhs,kdjk),
	mk(Mhs,tambah1).


    analisis(Mhs,ipk_baik_tetap_semangat_dan_pertahankan) :-
        mk(Mhs,ipk3),
	mk(Mhs,ipk33),
        mk(Mhs,komnum),
        mk(Mhs,grafkom),
        mk(Mhs,pemdek),
        mk(Mhs,probabil),
        mk(Mhs,rpl),
        mk(Mhs,kdjk),
	mk(Mhs,tambah1).

    analisis(Mhs,ipk_cukup_tetap_semangat_dan_terus_Belajar) :-
        mk(Mhs,ipk2),
	mk(Mhs,ipk22),
        mk(Mhs,komnum),
        mk(Mhs,grafkom),
        mk(Mhs,pemdek),
        mk(Mhs,probabil),
        mk(Mhs,rpl),
        mk(Mhs,kdjk).

    analisis(Mhs,ipk_kurang_semangat_jangan_putus_asa_belajar_lebih_giat_lagi) :-
        mk(Mhs,ipk1),
	mk(Mhs,ipk11),
        mk(Mhs,komnum),
        mk(Mhs,grafkom),
        mk(Mhs,pemdek),
        mk(Mhs,probabil),
        mk(Mhs,rpl).

    analisis(Mhs,ipk_sangatkurang_HARUS_Belajat_Lebih_Keras_Lagi_SEMANGAT) :-
        mk(Mhs,ipk0),
	mk(Mhs,ipk00),
        mk(Mhs,komnum),
        mk(Mhs,grafkom),
        mk(Mhs,pemdek),
        mk(Mhs,probabil).


    analisis(_,"Sistem tidak dapat mengetahui karena jawaban anda tidak valid").

    response(Reply) :-
        read(Reply),
        write(Reply),nl.

    ask(Mhs,Question) :-
	write(Mhs),write(','),write(Question),


	interfaceMK1(',',Mhs,Question),
	write('Loading...'),nl,
	sleep(1),
	write('Loading...'),nl,
	sleep(1),
    nl.

:- dynamic yes/1,no/1.

    count_sks(analisis_mk).
    count_sks(t(_,skt,skt),1).
    count_sks(t(_,L,skt),N) :- L = t(_,_,_), count_sks(L,N).
    count_sks(t(_,skt,R),N) :- R = t(_,_,_), count_sks(R,N).
    count_sks(t(_,L,R),N) :- L = t(_,_,_), R = t(_,_,_),
    count_sks(L,NL), count_sks(R,NR), N is NL + NR.


verify(P,S) :-
   (yes(S)
    ->
    true ;
    (no(S)
     ->
     fail ;
     ask(P,S))).
undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.

jumlah_sks(JUMLAH,1,JUMLAH):-!.
jumlah_sks(X,Y,Z):-K is Y-1, jumlah_sks(X,K,Z1), Z is X+Z1.

mkTree(matakuliah).
mkTree(t(_,mk,mk)):-!.
mkTree(t(_,L,mk)):- mkTree(L).
mkTree(t(_,mk,R)):- mkTree(R).
mkTree(t(_,L,R)):- mkTree(L), mkTree(R),!.


pt(Mhs):-
analisis(Mhs,Pesan),
interfaceMK3(Mhs,' Hasil prediksi Matakuliah Tersebut telah berdasarkan kurikulum yang tersedia. Maksimalkan dalam pengambilan SKS. Pesan: ',Pesan,''),
write(Pesan),write('.'),undo,end.


end :-
nl,nl,
sleep(0.7),
write('*********************************************************************************************'),nl,
sleep(0.4),
write("||| Buktikanlah Pada Mereka Kalau Kamu Bisa Lulus Tepat Waktu Dengan PREDIKAT CUM LAUD |||"),nl,
sleep(0.4),
write('*********************************************************************************************'),nl.

interfaceMK1(X,Y,Z) :-
	atom_concat(Y,X, FAtom),
	atom_concat(FAtom,Z,FinalAtom),
	jpl_new('javax.swing.JFrame', ['Pemilihan Matakuliah'], F),
	jpl_new('javax.swing.JLabel',['Sistem Saran Pengambilan Matakuliah'],LBL),
	jpl_new('javax.swing.JPanel',[],Pan),
	jpl_call(Pan,add,[LBL],_),
	jpl_call(F,add,[Pan],_),
	jpl_call(F, setLocation, [400,300], _),
	jpl_call(F, setSize, [400,300], _),
	jpl_call(F, setVisible, [@(true)], _),
	jpl_call(F, toFront, [], _),
	jpl_call('javax.swing.JOptionPane', showInputDialog, [F,FinalAtom], N),
	jpl_call(F, dispose, [], _),
	write(N),nl,
	( (N == yes ; N == y)
      ->
       assert(yes(Z)) ;
       assert(no(Z)), fail).

interfaceMK2 :-
	jpl_new('javax.swing.JFrame', ['Pemilihan Matakuliah'], F),
	jpl_new('javax.swing.JLabel',['Sistem Saran Pengambilan Matakuliah'],LBL),
	jpl_new('javax.swing.JPanel',[],Pan),
	jpl_call(Pan,add,[LBL],_),
	jpl_call(F,add,[Pan],_),
	jpl_call(F, setLocation, [400,300], _),
	jpl_call(F, setSize, [400,300], _),
	jpl_call(F, setVisible, [@(true)], _),
	jpl_call(F, toFront, [], _),
	jpl_call('javax.swing.JOptionPane', showInputDialog, [F,'Nama :'], N),
	jpl_call(F, dispose, [], _),

	(   N == @(null)
	 -> interfaceMK3(' Anda Telah Keluar dari Sistem','Terima Kasih '),end,fail;	write("Nama : "),write(N),nl,pt(N)
	).



interfaceMK3(P,W1,D,W2) :-
	atom_concat(P,W1, A),
	atom_concat(A,D,B),
	atom_concat(B,W2,W3),
	jpl_new('javax.swing.JFrame', ['Pemilihan Matakuliah'], F),
	jpl_new('javax.swing.JLabel',['-Sistem Saran Pengambilan Matakuliah-'],LBL),
	jpl_new('javax.swing.JPanel',[],Pan),
	jpl_call(Pan,add,[LBL],_),
	jpl_call(F,add,[Pan],_),
	jpl_call(F, setLocation, [400,300], _),
	jpl_call(F, setSize, [500,400], _),
	jpl_call(F, setVisible, [@(true)], _),
	jpl_call(F, toFront, [], _),
	jpl_call('javax.swing.JOptionPane', showMessageDialog, [F,W3], N),
	jpl_call(F, dispose, [], _),

	(	N == @(void)
		->	write('')
		;	write("")
	).
