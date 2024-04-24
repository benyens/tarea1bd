PGDMP  7                    |            dbtarea1    16.2    16.2 +               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                        0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            !           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            "           1262    24578    dbtarea1    DATABASE     {   CREATE DATABASE dbtarea1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Chile.1252';
    DROP DATABASE dbtarea1;
                postgres    false            �            1259    25205    actor    TABLE     �   CREATE TABLE public.actor (
    id_actor integer NOT NULL,
    nombre character varying(45) NOT NULL,
    edad integer NOT NULL
);
    DROP TABLE public.actor;
       public         heap    postgres    false            �            1259    25204    actor_id_actor_seq    SEQUENCE     �   ALTER TABLE public.actor ALTER COLUMN id_actor ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.actor_id_actor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    218            �            1259    25221    actor_participa_en_pelicula    TABLE     u   CREATE TABLE public.actor_participa_en_pelicula (
    id_actor integer NOT NULL,
    id_pelicula integer NOT NULL
);
 /   DROP TABLE public.actor_participa_en_pelicula;
       public         heap    postgres    false            �            1259    25199    director    TABLE     �   CREATE TABLE public.director (
    id_director integer NOT NULL,
    nombre character varying(45) NOT NULL,
    edad integer NOT NULL
);
    DROP TABLE public.director;
       public         heap    postgres    false            �            1259    25198    director_id_director_seq    SEQUENCE     �   ALTER TABLE public.director ALTER COLUMN id_director ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.director_id_director_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �            1259    25211    pelicula    TABLE     �   CREATE TABLE public.pelicula (
    id_pelicula integer NOT NULL,
    id_director integer NOT NULL,
    nombre character varying(45) NOT NULL,
    genero character varying(45) NOT NULL,
    duracion integer,
    fecha_publicacion date
);
    DROP TABLE public.pelicula;
       public         heap    postgres    false            �            1259    25210    pelicula_id_pelicula_seq    SEQUENCE     �   ALTER TABLE public.pelicula ALTER COLUMN id_pelicula ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.pelicula_id_pelicula_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    220            �            1259    25248    premio_mejor_actor    TABLE     �   CREATE TABLE public.premio_mejor_actor (
    id_premio integer NOT NULL,
    id_actor integer NOT NULL,
    anio integer NOT NULL
);
 &   DROP TABLE public.premio_mejor_actor;
       public         heap    postgres    false            �            1259    25247     premio_mejor_actor_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_actor ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_actor_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    225            �            1259    25237    premio_mejor_director    TABLE     �   CREATE TABLE public.premio_mejor_director (
    id_premio integer NOT NULL,
    id_director integer NOT NULL,
    anio integer NOT NULL
);
 )   DROP TABLE public.premio_mejor_director;
       public         heap    postgres    false            �            1259    25236 #   premio_mejor_director_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_director ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_director_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    223            �            1259    25260    premio_mejor_pelicula    TABLE     �   CREATE TABLE public.premio_mejor_pelicula (
    id_premio integer NOT NULL,
    id_pelicula integer NOT NULL,
    anio integer NOT NULL
);
 )   DROP TABLE public.premio_mejor_pelicula;
       public         heap    postgres    false            �            1259    25259 #   premio_mejor_pelicula_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_pelicula ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_pelicula_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    227                      0    25205    actor 
   TABLE DATA           7   COPY public.actor (id_actor, nombre, edad) FROM stdin;
    public          postgres    false    218   �5                 0    25221    actor_participa_en_pelicula 
   TABLE DATA           L   COPY public.actor_participa_en_pelicula (id_actor, id_pelicula) FROM stdin;
    public          postgres    false    221   c=                 0    25199    director 
   TABLE DATA           =   COPY public.director (id_director, nombre, edad) FROM stdin;
    public          postgres    false    216   �C                 0    25211    pelicula 
   TABLE DATA           i   COPY public.pelicula (id_pelicula, id_director, nombre, genero, duracion, fecha_publicacion) FROM stdin;
    public          postgres    false    220   KK                 0    25248    premio_mejor_actor 
   TABLE DATA           G   COPY public.premio_mejor_actor (id_premio, id_actor, anio) FROM stdin;
    public          postgres    false    225   �a                 0    25237    premio_mejor_director 
   TABLE DATA           M   COPY public.premio_mejor_director (id_premio, id_director, anio) FROM stdin;
    public          postgres    false    223   Lb                 0    25260    premio_mejor_pelicula 
   TABLE DATA           M   COPY public.premio_mejor_pelicula (id_premio, id_pelicula, anio) FROM stdin;
    public          postgres    false    227   )c       #           0    0    actor_id_actor_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.actor_id_actor_seq', 200, true);
          public          postgres    false    217            $           0    0    director_id_director_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.director_id_director_seq', 200, true);
          public          postgres    false    215            %           0    0    pelicula_id_pelicula_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.pelicula_id_pelicula_seq', 300, true);
          public          postgres    false    219            &           0    0     premio_mejor_actor_id_premio_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.premio_mejor_actor_id_premio_seq', 25, true);
          public          postgres    false    224            '           0    0 #   premio_mejor_director_id_premio_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.premio_mejor_director_id_premio_seq', 37, true);
          public          postgres    false    222            (           0    0 #   premio_mejor_pelicula_id_premio_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.premio_mejor_pelicula_id_premio_seq', 31, true);
          public          postgres    false    226            t           2606    25225 <   actor_participa_en_pelicula actor_participa_en_pelicula_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_pkey PRIMARY KEY (id_actor, id_pelicula);
 f   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_pkey;
       public            postgres    false    221    221            p           2606    25209    actor actor_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.actor
    ADD CONSTRAINT actor_pkey PRIMARY KEY (id_actor);
 :   ALTER TABLE ONLY public.actor DROP CONSTRAINT actor_pkey;
       public            postgres    false    218            n           2606    25203    director director_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.director
    ADD CONSTRAINT director_pkey PRIMARY KEY (id_director);
 @   ALTER TABLE ONLY public.director DROP CONSTRAINT director_pkey;
       public            postgres    false    216            r           2606    25215    pelicula pelicula_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_pkey PRIMARY KEY (id_pelicula);
 @   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_pkey;
       public            postgres    false    220            x           2606    25252 *   premio_mejor_actor premio_mejor_actor_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.premio_mejor_actor
    ADD CONSTRAINT premio_mejor_actor_pkey PRIMARY KEY (id_premio);
 T   ALTER TABLE ONLY public.premio_mejor_actor DROP CONSTRAINT premio_mejor_actor_pkey;
       public            postgres    false    225            v           2606    25241 0   premio_mejor_director premio_mejor_director_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.premio_mejor_director
    ADD CONSTRAINT premio_mejor_director_pkey PRIMARY KEY (id_premio);
 Z   ALTER TABLE ONLY public.premio_mejor_director DROP CONSTRAINT premio_mejor_director_pkey;
       public            postgres    false    223            z           2606    25264 0   premio_mejor_pelicula premio_mejor_pelicula_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.premio_mejor_pelicula
    ADD CONSTRAINT premio_mejor_pelicula_pkey PRIMARY KEY (id_premio);
 Z   ALTER TABLE ONLY public.premio_mejor_pelicula DROP CONSTRAINT premio_mejor_pelicula_pkey;
       public            postgres    false    227            |           2606    25226 E   actor_participa_en_pelicula actor_participa_en_pelicula_id_actor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_id_actor_fkey FOREIGN KEY (id_actor) REFERENCES public.actor(id_actor);
 o   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_id_actor_fkey;
       public          postgres    false    218    4720    221            }           2606    25231 H   actor_participa_en_pelicula actor_participa_en_pelicula_id_pelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);
 r   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_id_pelicula_fkey;
       public          postgres    false    4722    221    220            {           2606    25216 "   pelicula pelicula_id_director_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_id_director_fkey FOREIGN KEY (id_director) REFERENCES public.director(id_director);
 L   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_id_director_fkey;
       public          postgres    false    216    4718    220                       2606    25253 3   premio_mejor_actor premio_mejor_actor_id_actor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_actor
    ADD CONSTRAINT premio_mejor_actor_id_actor_fkey FOREIGN KEY (id_actor) REFERENCES public.actor(id_actor);
 ]   ALTER TABLE ONLY public.premio_mejor_actor DROP CONSTRAINT premio_mejor_actor_id_actor_fkey;
       public          postgres    false    225    218    4720            ~           2606    25242 <   premio_mejor_director premio_mejor_director_id_director_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_director
    ADD CONSTRAINT premio_mejor_director_id_director_fkey FOREIGN KEY (id_director) REFERENCES public.director(id_director);
 f   ALTER TABLE ONLY public.premio_mejor_director DROP CONSTRAINT premio_mejor_director_id_director_fkey;
       public          postgres    false    223    4718    216            �           2606    25265 <   premio_mejor_pelicula premio_mejor_pelicula_id_pelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_pelicula
    ADD CONSTRAINT premio_mejor_pelicula_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);
 f   ALTER TABLE ONLY public.premio_mejor_pelicula DROP CONSTRAINT premio_mejor_pelicula_id_pelicula_fkey;
       public          postgres    false    220    4722    227                 x�uWIv�8]��	� 8-e��dɶlٖ^o %+�V���U�m�,u�������M."�@?~|
��,������5+S.�}0]r9�?�1Q���N�ˤ�̹b�ä�k*�9{УN��z֬�����8.��:���ɂW��^'����~׼б�}m��������Y�r��K}4͘�.3�˚����k���0��A��޶Mnʊ���/S�[�15f�,ϸP쓞G�X>�7p��w��Z���]0�`�4�0l����d1z�����OH���sQ#�>��W\��܌��|<��=Wd\
��Q�ÑI��d��quXrr:7;}�T�ؕ��B: ���2g�����e�V�{=u�}0��������&y7��<�q�%���L���kv��4�W2*���e���`w�c3�C�E��01	�d�zj��A��2�e����F(B���8-��f�/.c8�����WZC �\op�Ͽ�1��`ᤨxV��Gw�E���Of�*f5��e�ӂ��*ݴ�&�cÊ�+�nl[�S�<��+�ߔ�H��؇f����w��*�{����@�F�콞��ic/�bU��e��qH����e�:-Sr�`V&��* a4ɩ�"Κ����EΑ�����ܵ%>yD��d'���p�m�e���N�[=������"nU����ID�y���C�:*���0z�n19#=0���U �Ñ�ӕ�+x���]�~�1��{��\�I�Z����+�cV�`��x�r�t�f��)
vq��	`,��'�U���Aw��Ȣ`�{jM��id���\)<����]J�U�p�������E0b.U������c��l�{���I��2b���c��jVY���̣eϏ6��(����J]��G �
��J*���ӕ�S�;ðeې��ĕ��ͺf�V�V���S[��r;<�vCUe��O�<�MQ㪲D�}a��U��{0g7�qU�"p���(©�%�u��>�{s����ζ�z� ׵� ���x�����H����q��%����f�CڑUDGd4X�@s�{5����L-'���z�B@�`�'���h��TZ�_7%-�����ɟb�ϘA�<�������$��=��MKv�p*��hZae��yn�1������6&P38\@l�����͈����bC_��/�����5�\�[� <\ylp�`�XA��"�eZ9�E��CQ��h��~rN�D9�L% �`�Q�����B�,���^�	�����G���,}c�^x���H*�:&j���+ ��!����{�'D��xw��-�	H /��`��~A�����T�lݖ� $���ߗt_�rx%D��p#��r��tTLqSnٺ&����u2�L5���k�����{�������(7(�t(���'#������B!)��� [�
��j�#kɮ�s��!Jk�_y4DIj|�����rK �IyA8t��K��purx� ���4^�rZ{�y(�P*�?d %�ZoHb�� y
�Όk�����a�i�!BE"oS�!6ٟ�z���Ԁ���5[5O���Ֆg=҅<B�wKMQT�0V	�����FQ��*7�DY��&I܃4 	��ς�����"� �������q��J��/lr��ݮr�bYI΅A_B�
~�C�	�P
~b�P	�����7�
�5(��=��ҥ� B���2D��h�C��-*����	�^�N�"��}��!B�H��"TB�x�D_���'�Q�SU��'[
�	�_JZ��^�c��g3�G���FЌ�!�����HCC����tA_���P�ˊ,E\h��4KP����l����߷fZ�����k�WB5l��5}��8�����         P  x�5�K�-9C���t�����:ZGܚTFebBn��rd����-��"^�=�ܧ�������������;�[��"f��2{{����m�տ���O�����&�iqR��|�o�z{esu�\\=�k�{2�����W;�>�Ŕ��]W~��3fo2͡�s}z�f����@�2���"�i��m左���իo29����T����\/��E�M�:�MÁ��C7uǇ�0A{ˁ�&�w>pdy�U �J���ڋ�B�J�sS�]߆l�/���D��O!ҕa�P @EJuM=�Z���j\�+�P�uq��!mݠ#Co�k7)i��	}t��T��2�|R�s��:!�ow|
�A��m�M�g�-�����h�D]>m	S}�Eaͮ��9le�TVO�F=�����ma.蹨Z�Wx��X�h*ޣN���6�5`;\ܐW�������>�L�˭�J*�>�\���0 i0����z�Q�+���u��Kv�SdC�<W%�,���ܶ�(m/~Q�4wmǿ\i�Q�V>9W���)�E*�r��MzG.��1����s#F�A[YV�D���D�~��?��Ma0!Km�.�תt/����9��ƣ�TT/�d��t�HW��V��&�¢D6r���M�{�ku�l�~��{]gFahN)F[����W���2�9�ڃ̔�������tXZ��+{�>	ݬL�lMfJY�S3��@Ȥ\颟�cQ� J�B�KB���:�)�(B4`&Q�;�=�h!`��"}������9�0�5� 6�GJ�]��e�nrN!�J�PzUjuJ�/��C5�������B��Y��dV���0�h1U�u�� G�j���W/i)��&�����>��'c��,�m�������� ��j�S�,jp/���X��D#YT���(a�zx�����UwR�k��>M��fnz.'��z�ʯB O�̉���jB]9`f
v�7�啾y"��Kzud�x��Ê�Ȉ5@U���M�c�bC�0@	�LP�S���d��X�@,�k�z��(�_����Br��(]��3}ym����ȧ5��a�Ҭ	ו�B�/�}j��;-=O嬩�٧�4#��%���ד�}qA��K�k3i���u:<_C���!}M��hi��<0<ԦÌ�[�P؆X�3Gf��9�'�' ��B̂9j�!Ԁ�=^-��^�X�9�{Eu��N\,6�s
��*������kW &�倽p�D�����wog�ǳl=w?�qfW��7�&l?갲��l�7vMu^���W��e,� @:@�7!�r��v6*SQ@]�pJ	�֏�����|d�f����7&c�NMe�i*���S��c����Dt�x�Z�W�%`�we�S0���R"~K���yF̿΃6Y�x�A*�����i9J.έŇ�N�3k�o� ��m�4��x�}�ک⠀T�<y���˿��U	,�
��E�b�LhW뵺�/�Zc���,)Z�c��aDiO���/�|�˚���g.f�� ڭ������:�����e���5��7��K��K$��. �VF�)�tƏ�z�3���"�/��٬:��.*�����?�(�         x  x�mW[v۸�V��!H?��q�8�s�,!���KQ�Ļ���Ʀ/j�ܯX�htWW{m�M�a^�ΰF��-V^�XS��g��t%��5�잊O��S�7��э��P�N�����)�U^��kX]�]��x�;bK+�f�������i�;�Ռ���8�o�E�.�_�x��m�"g�f7�?ak-��؋�ۺG[��qb
K5�bz;;S\��8������üG����%vC7���X7)D�c�|�w���e��l���w����f��lN���C�d7���xU�wߛ��2�K��������O��O�mxU�w�՛�zw�eG�V��C�oG֖��썛��Ū!��A��GN������=���;��Zͫ�]�-��fN�άƥ�}��E%��}q'�X����:C��%��yEw�����|1�� ��u�;��Y����u,w��ג��S���gy���bo�ۻC��ҽ{ۀ�o�����|g�0��f��uǾ�����E:�&�2�����%�5#�\q��eŮ�~�Kqc�����ݸE�𨸔쥙�M!'Tӑ:���3-�b��j��돶�����x�JS�r��~�k$���L�g��s1����7+����M�Ro�υg�?zs#y##,>ӤbS�!��`0��F�a�k1 M���9M����K�4�}�H�ܞ�M����G��*�[s@��P���w�`�W�<É80�*L��P����ڎ+�k��T�\5���W�Q���Z�jp�Se����@I5����ˠo��t4����ֻ�w�?��"f{�`[�I�&�K,��V����Eo��]B"�Va��(X	Lp0�v�R1��6Q����ML"&e��7�OhHt����g��ϥ y]�kz��4.��n�X]s]Ǘ�7Zq-�l�ɣPMX˭/�V4:X��!qG�!�N�?�Bj�u�%�Nw��뀨]���*R�D�l�)���؇�O���x����������= �.�F��N�/��3[J޵�n>�3v��u�4�S"���]��/v��$Q`Q����8n�`oiZ] �(�|�n�����L�����6?y�*�'�X1�K�Md� ��W�:�#�@�m�G���D$$J2wQSFQ�S9��2Q���ן71
(yx��} ab7��L�C�)���I>��f(� �"���C�<�N"�	r�o�.]�\s��EF����@;�ݳA(�T@��3�Ѷ*s3�_⑐�� ���o�?�ę�zҢlPv/�A!�J��ZҪF% ��Wv��^��<W�&o��:��po��c�0�B���FCE�����6�2d�݁ο]��6{�QY{�����3 l��+ˇ 
E���?e�^Pn����eD���?�`�S�N(��ĕU�8�B&�]AO��R@��{ϸ��������*oP�����LH�i F��pbkE^��g�*�~�I·(�?
))Ny��O*�< �(��<v�$�H��!�Շ�U{o����LNY��H��ͣ]�p�(��J��dp~6 %{c6{��|�p�,�n�����h�J��^�RU���b��@�tav XǛ:K��,(�ξ�륢�{98O^�� ;�?X<{�������;HULd���o�� vE�(HqU
6��p�p<!4�]b1�T=���dtb�p	4LB�ʰ��E���'ҀG��w���G��"�b��ka>��#\b����
���`p�=��~V`�~=��0	��V�Ы�9����|$U�Ͷ�����$x~OM}��8���y(�.��ki_�J����E]��V2�x;,CBe�IYu��.	*}��6�g�ڐ���7���*��6            x��\���ȍ�ɯ�?��$�$�	�5��n�:밫x�r�U�bu����Ȕ1�B��������}#�i�d����(S��*�._����͗ۗ�����<}��/����Ϸ��2]�ƥ0uW�ʸ��y2ui��`�:�=�E׼M��z+��q�OX�8ZR�O�z�UY��u�r�]���o#-��:���ş��z��/���i~��6l
3�ꩲX�?:��������Z��:�ccp��<U�S]�mA'�%���xǏ��4���<^�V���}�TO�/]�Zu�2����z?�e����]��i*�����a۲��;��_.K8�cZ���,=�0TX^�����G�=�	���L��i�*�-鞌-���5V]��<���Ҷ�0���
w��'[��������oחi)~�ΗQ��������u�6�H9>O�|}#��8�|��X��l��4��i3�s�f`���~�����
�����3����rV`�ax2V0�%tB��tZ������O���h����h=����_s��4>���ͻ�.{.�}�׼��1�����ji��8&�bN�7���y:Mk���rP`��6|��x���Y\��]��]���7l����e8x���W�~���nG&��L�;��P ��;�]��~�+���1�c�p=ە����\����g��,�xMl�`�9�5��sA��3��c�XQ3V�!�������˭�EM7�L�*["�,���v�˃���	�:��9���y;�zPw���u�{ާ�ٟ󶌩Ox����/-9��˃l<S���A��.�pԡ��pTz����ו��vU7C$ݞo!�	a�I:�͡��wu�ظbz�;&~����5%=?���J�¿�e˗���������xt��)춈B	�~����L�,7� ��ښ����3�Ƞ�
�9,�?�uM��y��/��)�N���x^�˜x�>EL �rdӎ��)	q=v>���+���b��ʨ'���W��OH����c�8ħ�kZW���g�p���r[�	�$s5��e��P��[�ɺȏ�r"_�~\�����8ꚽ?#������z�x7�M�J��,i6����[��ׇ�9��_���*f��Ё
�R"��7��<m��e|�$��� o\I�t��`Q�u�1-����e �C�k��1>�~�ȼ�������-?�8Cj���Oe8�҉k@ �����2�e�i�1&^oj�z���WpI��߇ýo�olٴl[��������)�-�N�T�lpS�����m&���<0`�`��)�-��� ��<��`�xh =� I�{����C�A�a�7�p�Ǵܾ\���2����>WN�q5a3�0��e����tZ'aIH�`���j��C�-�O��?A�vMy(�^k�[Z�|�k)��ǖ��)Zz��ޙ.���I�^L�W��&�d�fO$��Np�_Ͷ�e�=q�|j��3,d��\��6|��x�O�4���O�=�t�N��ҏ)D	ݺ�o�'��8W1c������m8N��`�<�$o:���>�Dh*YJW1035��C��&A-P���L!/�r`ƻ�Y���Yƻ��}6�A�+!E�,]��$���P)m�#�Bgiߦh�����}�����l����e�Q��-���̄'�y���2�9�sE=d)���y:��*F��t���IY�)N���$��(SR⻄�gI|H!�tCQ��x��ƿg��!x��Gy��N8-a2��d+o��e�%��ȳtKb�g*G�50�4 
*�n@�Wd��r��뛮�$mVH�n� nM˗�K�Kc��P��$Ⳝc)�`��s���y��"��);�'�յ��$98�n�TK�N����5ԥ��G�;C���\v�����I_��P�vC��Gړ2	M��(9���W��<���f2B���&�j�&��P9�8B�sO]��h暚⤷\��J�Đ��!y-�:��7��2X��1֓�T��\��oD�3)��)�5-{�^��d��|����c�N/�0�������t pҾ$.u �[��a+�l�N�u�3og:^�|o��re?�ç�/T]�~���T>�Rз%%&��=M�7��ذ΀�S'�^lՋa���`������'�.�?�@��^
;�r��C��p3� ���l��S�j�|C��,"u
�ؚ��m�	�($^������|[�4J����G�6E�$�Z�����=���}�����<I0**g�fC'��Tra�
�e��3���Ο&8��)�9�8�n�'��@I�)B��(��k�E�h��gN�uK����79�o�(�n�LT^J@���<�m��`�56�"����<������(�K]���c�}�$�6B�G&z��������ˢU�8z����ʡT`=���m�8y\O̝�1@.8p��Xf��F����MH,�~9�$���&Pk�����U�����=�W����0&��-x#_l�����;�[��o+��L��E���,GUحa^�u�8x�/�M3FU�JVS��"��t�>�J�ۺ>^O�Z@
�V�"6o��(�+*�HU:)!$�A�5�N�a�2���V�ڃ�%��	8D7y��z�G(�]CTc=��J�d%$1�hX�@2u+������:��	��3' �8�)x�ueȿ�*(����AwI�fҺ�9�>6��7W��5E�P�PH�.�[Q�O�\��$�{($C�����R�C0 ��:hv�jdS�n9]ש�Hh��K䄛�8�,a�֛,F,�4ڄ�u�c�ȿ��G8v�z��o�R�NO|+�~UbZ��p�昁o��ҟip��ՂM����)���!"���������U*�
+�U�Mm�����T)��i5@�G�2��
i�'��aú7>��&v)��H�R��0��d�D�2�fP����X�N���T+�-��c��>-P��[%�\s>f�v�*K������Rd q�-�_o��S�(�*�0m�?k�������i�+�t��X��ku����|���~+[��f�a�o�[��@�G�ﺟxl�n�v�;�vJv�<a����+zQ*e��z �g�l&XҊ<�ߍt�5�!g�cv�N}�ZEV�`hA�]c��;Mw�LEk��{����|G�*���T�=Ҵ?'�s����y���1�R0w�8�%/�s �=	vvV9/��Jv��U�%�� h��c��SRm���>R�O��T7�­|���8=��C�� ����r�`�W¢�Q}ȴ�g��j.E�Ʋ�yU�(xU�.�/X��( 0X�D ܒc���َ���5x%�������54�Yq
�Q������m�v�m�4���_
�.,����H��:I��A�xj��Q��VX�9A�� ���\H�2CQ��FY���a��}��u,��(��V��yZ6�B|��&b��RO�bI�>N}Ft�́V��%ַ�#���S�9b0�a���"�8�z�O�Ja�[@�:�\�1Q�t�-��H���sP�Xyua����'������ےh���X���.�Ӵ.lҵ�Mv���F3<іD���'2�@t̼��v���Y]L5-�&Ǯ�u���}�J�IQ.]�]�8?Rm#)����ƦNf60����	��4J[�q��q^��K��C��s�Bw�>�1B�b�����s�@;�.��vp�� Ԓ�ɂ���Fe=��;�f�_�q�}����
�qt�f�]�^C��M���tr Kbi�m���%[f|�� �� �b*u|5�B����sb�뵛���ُ�.?�t�_�����TL���R�k�0�K&CA�h~�o��7#����1w��>�̀�P�ז&VTH�h"jG��TSlYS$�%��	�� 7Zv�����a�8\�OT�Z)�-0���+��Z��+��&����O������.|� \G��N�&�H�b�� �s�DuJ�'7�X,�@�	���x��d� �
t�`�Ҳ��&Ic���6�{��I�����^��g�)�XtN��M��27�D���ܑ�f�����ZWR��yNm�@� F  0�k��3;�����89�۞ֶ��2�N���g�#�F�9U��20��&��-�x���d�$�Ioy.p:&kiӯ���e7]���&�������֘�z��$���b����܂�N5�FuTV�-s�!���+�c
`,�� ������&BW*�K�.6�	�Q�K�vzk`�E�3��f�m�ĥ�S-.ݲR�57��A���ʁ�[��mnzN���,~���[b%7욤�t�;�<�����S�d�^�d�g�Ca�d�Q��r�S��]m
�QhT�1|S�x��p��u�}׌0�NXk��Eۑ�s���Yk��������ަ(�TqO���*���Nš�L��z�a�p�����'�{"ޢ�G?�r��c˂]FTԦ-Ʋ�C��$o���LA@���]�����Ln�y]��gʟ|��P������� M�F	����ڌ��6M�/Ua��(��5�̔&���S�(�m>�4�G]7P�A�v@�kud���t��6�}�s(�&'"�y�T��T��9�xV{�6۶:.B��<�ˍ���@�O]ɘ���;��lH��ג��&�P|̤��SSZ-ꖌ@b�P�'��)�F����u����m�6b{ʖe��֚B���T�V��s�U�l��Z_^~6�(�����lSk�ojp�B"
O`4�9��~[)<1����b:XAn�ffM�=�h7Q�=۸��&_0o�@��t�%�n3��.�������3X�W�cyyL�ۑ�!��������'�NY� D����Q���C�%"���7;�p�jɏ��H�L_XLqj�)|����2��B����.�D�e�'I���@%%w���/e��-����l�:�j8Jy��9�,>o0�iu�1A񮚌,��J?��Gp[�<���O}V7N�� ���([e�}�9����Fz)<�h)����\?�:m!�7֙�(�i����k�W5����*��'M�_i��������ŏF���w�ϡ#w��c	&��a�e�Id��n����#�!:)���W/`Y���Q<�9���C�O](p�jyIb����c_��!Ô�&@w��6k>��_Z��/�r�F� ��6�Ҩ,?��_s�mcG)�X�b��x�gux/����S�"�����Z5��#xy,��n����|[��[����^�3	<�e���Ĵd�%Q�)z�9��*.�Y/��ǣD����@���� ~LN�mz /#���RF׏��_��{^$��Ẫ|V!�2���}��=p~ oh�ǟ7���=�
8������O$�� )j�w�,e�ïC�a�f��6��'����sG�>�2+�GōP�M�e�O��,��eK0��bS�	��Ҏ��A��|(_#��bx��T};�Ȧx�=�c������"_h˘J�F�et�^;X�X������&cBI:��Nz~V�38��5I>}n�$�E���B.I,i2¿��ai'�n'��(�|{�d�'�g�r��uڍ�㖯�dFl"&��%���������bJ���s�s�͓���ܸ������ У��H}SyD�� �T#�1uPՙ}?ba��-���V���Cx��         �   x�-�� ߤ��
���_��_&�Y�X�&hs(�´I���e��������{�{!}xَN�c^�x�F�ȓ���s&�����i�y�%�~�vgJ���=�Zε�&�*I]pX�������to�2&����E�h�P����,�         �   x�-�A�!C��0S�.����^t5c��)���T.{��Xs�ز��B��o���*C>cn���N�*�s��f��UA��v�Ň��T��`�|F�!|y}��^_v�l_xI���>������j&<3g�}~�
[r�^�.����u�v�c.X�>A�z�y�L�ʘ�ଡ଼x�^��z��E�Kv�ݛ�W��Vė2�g���!
Ax         �   x�-���0C��0=clv��sT���E'�'�c���ps�*Ls/ce ��o�4_�Ҧ��6��d�=5��q�����
T6A7�Μ���`6O���Jiq�q[yxl��
=/�p�WI]%o�W�ʎ������������V�1�7,ǵ�E�k��N��қ�â�qLu�?�����8�     