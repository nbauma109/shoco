
**�o�**: a f�t �%�� f� Кt �q�s
�  �  �  �  �  ----

**�o�** � a C �ߛy � �%� �d ���ss Кt �q�s. It � [v�y f�t](#�*e�s-�P-�@r�%#�) �d [e�y � �e](#api). T� �fa�t �%�i� ��l � op��z� f� �N�h �s, �t y� �n [��f y�r own �%�i� ��l](#��g�0���-��ls) �Pd � *y�r specific* �p� ��.

**�o�** � f�e ��, �I���d � r �e [MIT ұn�](https://�w.gĆ����G.�m/Ed-v�-S��ck/�o�/�Q�/LICENSE).

## Quick S�

Copy [�o�.c](https://�w.gĆ����G.�m/Ed-v�-S��ck/�o�/�Q�/�o�.c), [�o�.h](https://�w.gĆ����G.�m/Ed-v�-S��ck/�o�/�Q�/�o�.h) �d [�o�_��l.h](https://�w.gĆ����G.�m/Ed-v�-S��ck/�o�/�Q�/�o�_��l.h) f�m [gĆb/�o�](https://gĆb.�m/Ed-v�-S��ck/�o�) ov� � y�r p�ject. Inclu� `�o�.h` �d y� �e �%y � �e �e [API](#api)!

### API

H�e � a� � �:

```C
�ze_t �o�_�%�(�t ֋ * �, �ze_t �n, ֋ * �t, �ze_t �f�ze);
�ze_t �o�_���ss(�t ֋ * �, �ze_t �n, ֋ * �t, �ze_t �f�ze);
```

If �e `�n` �gu� f� `�o�_�%�` � 0, �e �p� ֋ � ¯�d � � n�l-�r�n�R. If � � � �s a po��ve �g�, p�� �e �p� �i �op af�r � �	�, � � a n�l-֋, ؉ev� � s fir�. `�o�_���ss` ��v� �i ̺ a po��ve �g� f� `�n` (�� �ke� y� Иld p�s �e �7rn value � `�o�_�%�`).

T� �7rn value � �e num�r � �s ي�n. If � � � � `�f�ze`, a� � ��. In �� � ����\n, a n�l-�r�n�J � ي�n. If �e �7rn value � exact� `�f�ze`, �e �tp� � a� � e, �t _not_ n�l-�r�n�R. It � up � y� � �׸ if �	 � � �s � ��r � not. If �e �ff� � not l�ge �`gh f� �e �tp�, �e �7rn value �i � `�f�ze` + 1. Y� �ght � � ��� a bigg� �tp� �ff�. T� �%�� �q� �i �v� � n�l-�r�n�R.

If y� �e �� �	 �e �p� �� � pӰ ASCII, y�r `�t` �ff� f� `�o�_�%�` �� ̺s � � � l�ge � �e �p� �q�. O� �H, �e �tp� �ff� �y ̺ � � up � 2x � l�ge � �e �p�, if � � � �s a 1-� �h�A, � ev� l�g� f� m��-� � v�ia�e-�d� �h�As �ke UTF-8.

F� �e �`�� valu� � _�o�_, �x�um �%�i� � 50%, so �e `�t` �ff� f� `�o�_���ss` ̺s � � a �x�um � t�q �e �ze � �e �%�� �q�.

## How It W�ks

Have y� ev� t�� �%��g �e �q�  � � ��)o w�ld � � � �P **gzip**? Let � � �s � � now:

```�R
$ e�o "�)o w�ld" | gzip -c | wc -c
32
```

So �e �tp� � actu� *l�g�* � �e �p� �q�. A� **gzip** � qu�e good �P Кt �p�: **xz** �	_� � �tp� �ze � 68 �s. Of � �, �%��g Кt �q�s � not ؉ �ey �e �h f�, ���e y� �ا ̺ � �ke s�a �q�s ev� s�a�  � � � ex�pt ؁ y� �. T�t � � �s �y **�o�** �s ي�n.

**�o�** w�ks � if y�r �p� � ASCII. In fact, �e �� ��rka�e p�p�ty � **�o�** � �	 �e �%�� �ze �i *�v�* ex�z �e �ze � y�r �p� �q�, �	Q� � � pӰ ASCII. W�t � ڐ: An ASCII �q� � su�a�e �p� f� �e ����b (ؖh �i �7rn �e exact sa� �q�, � � �). T�t p�p�ty � s � a ��, ��v�: If y�r �p� �q� � not �[�+ (� ���) ASCII, �e �tp� �y g�w. F� �  �p�s, � �n g�w qu�e a lot. T�t � �peci� true f� m��� �h�As �� � UTF-8. L�X-1 �d �%�a�e �h�As f�e �5�, �t �i �]l ��� y�r �tp� �ze, if y� �n � � �t �pp� � �t a �m�n ֋a�. Why � �	 so?

In ev�y Ӂuage, �  ֋a�s �e �� ڐ ��n � �@rs. E�r� � no e��q � � r�e. So if �e �ݧ �k� a ҉ � �e, say, �xȹ �� �m�n ֋a�s, f�r b�s �d � suffici�t � �f� � �em (� oppo�d � eight b�s  � � � �e �  � � � �� by ASCII). B� ؉ if �e �p� �q� �clu�s � �(m�n ֋a�, �	 � not � � ҉? H�e � � �s �e Ɏk: We �e �e fir� b� � a `֋` � � f if �e 脍�g b�s �f� � a Кt �m�n ֋a� � x, � a n��l ASCII �. S�) �e fir� b� � pӰ ASCII � al�: 0, �5�g �e fir� b� � 1 Ѻ  � � ��e �xt b�s ㇈at Кt ��s f� �m�n ֋s � � �. B� ؉ if �r ֋a� � not ASCII (� �g �e fir� b� � �e �p� `֋` � not 0)? T�n � �0rt a �rk� �	 Ѻ  � � ��py �e �xt � ov� �-� � � �, �d � � � �� ܊. T�t expӰs �e g�w� f� n�-ASCII ֋a�s: T�s �rk� tak� up a �, �iA �e effec�ve �ze � �e ֋a�.

How **�o�** actu� �rks �e pa�B ㇈a��s � a b� ڐ �,[�d � �	 (e.g., � also ̺ � specify *�w �ny* pa�B ֋a�s fo�n, so a ��� �%�g b� w� � � �t � suffici�t), �t �e p�Eip� �]l �lds.

B� **�o�** � a b� s�^� � j�t � abb�vi�e ֋a�s �Pd � absol�e f�qu�cy  � � � Ӂuag� �ve ڐ ��A3+� � �	. So� ֋a�s �e ڐ �ke� � � �
���d �xt � �@rs; �e �!�l exa�` �d � **q**, �	 � � �s *al�� al�:* 脍� by a **u**. In �N�h, *�e*, *�e*, *�*, *�* �e a� v�y �m�n �s  � � � �d a� �ve a **h** 脍� by a **e**. So if � � � �d ¨m�e a ҉ � �m�n ֋a�s *脍�g �m�n ֋a�s*, � �n � �P ev� � b�s � ㇈at �e *s�5��* ֋a�s, �d �]l �ve a good �t ��. T�t � � �s �e �� � **�o�**: P�vi� Кt ㇈a��s � ֋a�s �Pd � �e �Q� ֋a�.

T�s �� not �w f� op��l �%�i�  � � � by f�. B� if �e ��fԋ a�gns �e ㇈a�� packs � � � m�, �d �� �e ASCII-fir�-b�-Ɏk a�ve � �h� �e ��s, � w�ks �� �`gh. M�eov�, � � �az�y f�t. Y� �dn � � �t � � �e **�o�** f� �q�s l�g� �, say, a ˠ�d �s, ���e � �e ov��% � a f�l-�nn �%�� �ke **gzip** �g�s � � d�rf� by �e adv�g� � �e �2 ڐ effici�t algƊhms � ��.

If �e �d � � cӕify **�o�**, � �d � � [�^opy �h�r](http://�.�kip�ia.�g/�ki/E��py_�h�A), ���e �e �	� � �e ㇈a�� � a ֋a� � �2r��d by �e p�ba��ty � �
���A � � a giv� �p� �q�. T�t � � �s oppo�d � [�ti��y ��](http://�.�kip�ia.�g/�ki/Dţ��y_��r) �	 �� a �ti��y � �m�n �>��gs. An op��l �%�i� f� Кt �q�s �d p�ba�y � a�iev� ��g � [��h�3c ��r](http://�.�kip�ia.�g/�ki/A�P�3c_��A) (also a type � �^opy �h�r), �t �� �ke� �e �d not a�ieve �e sa� k�d � p��Y �	 **�o�** �*v�s.

How �� **�o�** get �e �fᕉq aށ ֋a� f�qu�n�? T�y �e not pԈd �t � � air, �t �1ead ��fd by �a�z�g �xt �P a �.�ve� �ݤ sc�pt. It �ts a� *big�ms*  � � � two �;Ywve ֋a�s  � � � � �e �xt �d Ƹrs �em by f�qu�cy. If �J� f�, � also șs f� � �h�As (�ke: Is � �5� � sp�d ڐ b�s � �e �%�g ֋a� � � �e s�5�� ֋a�?), �d � �tp�s �s f��s � a �%� fi� f� `�o�.c` � �clu�. T�t � s �e �
'�l ��l � �.� �; � �ݧ �n � � �t add � � �e �%�� �q� �P�t �n�g � �t � �	c[�s (�d �,g �e �o� p�po� � � ex�׈). T�s sc�pt � �ipp� �P **�o�**, �d �e [�xt ��n](#��g�0���-��ls) � aށ �w *y�* �n �e � � ��f a ��l �	 � � �s op��z� f� *y�r* k�d � ��. J�t ��m�r �	, �P **�o�**, y� ̺ � ��l ި �D � �e ֎n (�%�i� **�d** ����\n), ���e y� �n � � �t ���ss �� �r�ct� if y� � � �� not �� �	 �e �%�� �s �� �e sa� ��l.

## G�	,g Cᢈw� Mo�ls

May� y�r typŜ �p� �n � � �t �N�h �s. May� � � � �s g��n � f�h  � � � � �o� � �5s. Or fi� sy�em p�hs. Or URLs. Wʨ �e �`�� �%�i� ��l � **�o�** Иld w�k f� a� � �e, � �ght � �h�h � ɞn **�o�** f� � specific type � �p� ��.

FƷn�Uy, �	 � � �s �$� e�y: **�o�** �clu�s a py� sc�pt �� `��f_�%�i�_��l.py` �	 tak� �e � ڐ �xt f�C �d �p�s a �%� fi� �%y f� **�o�** � �e. H�e � � �s � exa�` �	 ɞns **�o�** �P a �ti��y (btw., not �e � k�d � �1�� ��, ���e � � � �s ܣn�R by �(m�n �s):

```�R
$ ./��f_�%�i�_��l.py /�r/Ћe/�t/�s -o �o�_��l.h
```

T�  �e op��s � �w � ִk �d �qp �e �p� ��  � � � f� exa�`, if � � � ɞn **�o�** �P �e �s � a �%� fi�, �t �P�t p�,u�\n �d ؒ�pa�, � �d �

```�R
$ ./��f_�%�i�_��l.py --sp�t=ؒ�pa� --�qp=p�,u�\n README.md
```

S�) � �v� � � �t specifi� � �tp� fi�, �e �l�� ta�e fi� � p�C� � �܁.

T�s � �� �ke� a� y� � � �� ̺ � ��f a good ��l, �t if y� �e ஁|�s, y� �ght � � play �И �P a� �e op��s � �e sc�pt: Type `��f_�%�i�_��l.py --�lp` � get a f��d� �lp �age. We w� � � �t �ve � �e �4ils � , �gh  � � � j�t �e � � �r��: G�	,g ta�C �n � slow if y�r �p� �� � l�ge, �d _�peci�_ so if y� �e �e `--op��ze-�h�A` op��. U�� [pypy](http://pypy.�g/) �n ��K��t� spe� up �e p��].

## C�*�Lns W�h O�  C�)��rs

### s�z

T�  � � �s �%�r good s�a �q� �%�� �t � e: [**s�z**](https://gĆb.�m/��z/**s�z**). **s�z** �ems � � �ti��y �Pd, ؕe **�o�** � � �^opy �h�r. As a �lt, **s�z** �i ��n � �5� � **�o�** ؁ �%��g �m�n �N�h �rms. Ho�v�, **�o�** �G6qy �!s **s�z** f� ڐ obsc�e �p�, � �I � � � � �s ASCII. **s�z** �y �l�ge y�r �q� f� �(m�n �s (�ke num�), **�o�** �i �v� � �	 f� ASCII �q�s.

P��Y-�H, **�o�** � �G6qy fr by � �"t a fa�
 � 2. As � exa�`, �%��g �d ����Xg a� �s � `/�r/�t/Ћe/�s` �P **s�z** tak� �И 0.325s � my �%�P �d �%�� � av�age by 28%, ؕe **�o�** �s a �%�i� av�age � 33% (�P �e �`�� ��l; � op��z� ��l �i � ev� �5�) �d tak� �И 0.145s. **�o�** � _�peci�_ f�t � ����\n.

**�o�** �n � ɞ�d �P �� ��, ؕe **s�z** � � �s �ti��y � �ilt-�. T�t ѷ, �e �x�um �%�i� �� � **s�z** � �_ � �a� f� **�o�**, so ��g � y�r �p� type, y� �ght f�e �5� �P **s�z** (� e � � �s no �y �И �: Y� �ve � �"�e � y�elf).

### gzip, xz

As 怛�d, **�o�** � � �s �%�i� ��o �n � � �t (�d ��n � � �t � �) �%e� �P gzip et al. f� �q�s l�g� � a few �s. B� f� v�y s�a �q�s, � �i al�: � �5� � �`�� �%��s.

T� p��Y � **�o�** Иld al�: � �v� ��s fr � aށ �y �`�� �%�i� �ol. F� ș�g p�po�s, � e � � �s a b��y �lcu�d (�7rp㈘; �� `�o�`) �	 �%�� �d ����C ��� f�C. T� 脍�g �ۙs �� �h �P � �m�@ ҂ �ol. T� �� � `/�r/Ћe/�t/�s` (�ze: 4,953,680), �%��g � � a �o� (not a �r� po�t � **�o�**):

�%�� | �%�i� �� | ����\n �� | �%�� �ze
�  ---|�  �  --|�  �  ----|�  �  
�o�      | 0.070s           | 0.010s             | 3,393,975
gzip       | 0.470s           | 0.048s             | 1,476,083
xz         | 3.300s           | 0.148s             | 1,229,980

T�s �搱�s qu�e c�#� �	 **�o�** � � �s �%�i� �� ��s, �t also �	 � � � �s _v�y_ f�t.

## Jav�c�pt V�#�

F� О�g �f, **�o�** �ips �P a Jav�c�pt v�#� (`�o�.js`) �	 � � �s ��fd �P [emsc�p�n](https://gĆb.�m/k�pk�/emsc�p�n). If y� ֈge �e �fa�t �%�i� ��l, y� ̺ � �-��f � by typ�g `�ke js`. Y� � ̺ � �ve emsc�p�n ��d. T� �tp� � [�m.js](http://�mjs.�g/) �P a s�a Г � p�vi� a �nv�i�t API:

```js
�%�� = �o�.�%�(�p�_�q�);
�tp�_�q� = �o�.���ss(�%��);
```

T� �%�� �q� � �$� a [U�t8Ar�y](https://�velop�.�z�N.�g/�-US/�cs/Web/API/U�t8Ar�y), ��e �	 �m�C a C �q� ڐ clo�+. T� Jav�c�pt v�#� � not � f��� f�t � �e C v�#� ���e � e � � �s dyna�c (�ap) �ڕ ��ˍ �volv�, �t I gu�s � e � � �s no �y �И �.

`�o�.js` Иld � �a�e � a no�.js ���.

## Tools A� O�  Inclu�d Exɚ

Mo� � �em �ve �9 怛�d al�%y, �t f� �e sake � �,̝  � � � �t � � �s �ve a quick ov�view ov� ؉ y� � � �� f�d � �e �po:

#### `�o�.c`, `�o�.h`, `�o�_��l.h`

T� �#t � �e p�ject. If y� �n � � �t � � ި� �P ��y-g�Uy �4ils, �d �e �%�i� w�ks f� y�, � � � �s a� y� � � �� ev� ̺.

#### `��ls/*`

As �i̓, � e �e ڐ ��ls �clu�d. Feel f�e � �e �e � �em �1ead � �e �fa�t ��l: J�t �py � ov� `�o�_��l.h` �d y� � � �� a� �t. Re-�ild �em �P `�ke ��ls`.

#### `�1��_��/*`

So� �oks f�m [P�ject G�Q�rg](http://www.g�Q�rg.�g/e�oks/) �� f� ��g� �e �fa�t ��l.

#### `�o�.js`

Jav�c�pt �ߛy, ��fd by **emsc�p�n**. Also �a�e � a [no�.js](http://no�js.�g/) ��� (p� � � `no�_���s` �d `�qui�` �). Re-�ild �P `�ke js`.

#### `�o�.html`

A exa�` � �w � �e `�o�.js` � a �b��.

#### `�o�`

A ș�g �ol f� �%��g �d ����Xg f�C. Build � �P `�ke �o�` � j�t `�ke`. U� � �ke �:

```�R
$ �o� �%� fi�-��%#s.txt �%��-fi�.�o�
$ �o� ���ss �%��-fi�.�o� ����B-fi�.txt
```

It � � �s not � t f� �	_Ӎ �e, ���e I �n � � �t �age �y �e �d � � �e **�o�** � �[� f�C.

#### `ș_�p�`

A�(� ș�g �ol f� �%��g �d ����Xg ev�y ҂ � �e �p� fi�. Build � �P `�ke ș_�p�`. Usage exa�`:

```�R
$ �� ./ș_�p� < /�r/Ћe/�t/�s 
Num�r � �%�� �q�s: 479828, av�age �%�i� ��o: 33%

�$   0m0.158s
��   0m0.145s
sys    0m0.013s
```

Ad�A �e �m�@ ҂ s�t� `-v` giv� ҂-by-҂ �fᕉq aށ �e �%�i� ��os.

#### `Makefi�`

It � � �s not �e �� M � l33ș Makefi� ev�, �t � Иld give y� ʃs f� �g�˙ **�o�** � y�r p�ject.

#### `șs`

Invoke �em �P `�ke �eck`. T�y Иld p�s.

## Tʁs S�� To Do

**�o�** � �a�e, �d � w�ks ��  � � � �t I � � �d �ve �� ș� � �P gcc/cӁ � x86_64 L�ux. Fe�back � �w � runs � �@r OS�, �.�s �d �֒e�8� �d � �gh� app�ci�R! If � fails, � � � �s a �g (�d giv� �e �ze � �e p�ject, � Иld � e�y � fix). O�  � �	, � e � � �s a few �o� �	 �d �`d �  ��ove�s:

* T�  Иld � ڐ șs, ���e � e � � �s _�v�_ �`gh șs. Ev�. P�փ �e v�y �l� !
* T�ts Иld �clu� ��l ��g�. As �	 �volv� �-�.�i�, �e Иld p�ba�y ي�n � a Makefi�, � � �R � Py� (�y� ��g `ctyp�` � �� �e **�o�**-�,qs ��ct�).
* T� Py� sc�pt f� ��l ��g� Иld �e �  c� -up, � �� � ���qi�. Also � Иld �]ize a� cpu �s (p���y via �e `m��p��]`-���). T�s � a good t�k f� �w ����rs!
* Aga� f� ��l ��g�: Inv��g�e �y **pypy** �n � � �t � f�t � Иld � expe� ([j�vie�r](https://b���et.�g/pypy/j�vie�r/) �ght � � �lp � ).
* Make a �$ **no�.js** ���.
* T� c�� SSE2 op��z�\n � p�ba�y not op��l. Any�e �o lov� � �nk� �P �e k� � ��o-op��z�\ns � �vĒ � try �s � �r �@ � .
* P�h�Hg/packag�g � � a �$ �ߛy p�ba�y ��n � � �t �ke �2 �e, � �e ��l � �.�-�, �t �y� � Иld � �k�g � �� � �e **�o�** � a g� sub��� (ev� if � � � �s j�t aށ ad�A ���qi�), � f�� �@r �: � avoid �e �py&p �1࠱q.

## Fe�back

If y� �e **�o�**, � �ke � f� ؉ev� �"�, I � � �d �$� love � [�# f�m y�](�u�:֩�i�.h.m.s֫mm � g�u.�m - �pla� �e '�' �P @ �d �(� � � �5-)! If �J� f�, I �n p�vi� �g�ˍ �P **�o�** f� y�r �m�rcial �rvŋ (� a p�q, � � �), � f� y�r �l�y a�ܴ f�e �d op� � � �� (f� f�e, if I f�d �e ��). Also, a �� �y � Ѽ� �ks � � ���t � f��.� via
[g� �p](https://www.gīp.�m/Ed-v�-S��ck/) � [fӍr](https://fӍr.�m/sub�t/a�o?��_id=C�I��.S֫mm&�l=https://�-v�-s��ck.gĆb.io/�o�&Ӂuage=C&tags=gĆb&��g�y=��).

If y� f�d a �g, � �ve a f�� �qu�t, [fi� �](https://gĆb.�m/Ed-v�-S��ck/�o�/�o�/�w)! If y� �ve a qu�ˍ aށ �age � �rnals � **�o�**, �k � � [�ackov�flow](https://�ackov�flow.�m/qu�ˍs/�k) f� good expo��  � � � �d يe � a �u, so �	 I �n � � �t �� �.

## A�Crs

**�o�** � ي�n by [C�I�� S֫mm](�u�:֩�i�.h.m.s֫mm � g�u.�m - �pla� �e '�' �P @ �d �(� � � �5).
