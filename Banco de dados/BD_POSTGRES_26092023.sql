PGDMP                         {            postgres    13.12    13.12 '    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    13442    postgres    DATABASE     h   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE postgres;
                postgres    false                        0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3071                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false                       0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            �            1259    32864    aluno    TABLE     �   CREATE TABLE public.aluno (
    nome text,
    email text,
    estado text,
    cpf text,
    curso text,
    senha text,
    pcd text,
    sobre text,
    imagem bytea,
    escolaridade text,
    telefone text,
    experiencia text
);
    DROP TABLE public.aluno;
       public         heap    postgres    false            �            1259    16472    areaprof    TABLE     `   CREATE TABLE public.areaprof (
    id_areaprof integer NOT NULL,
    nome_area text NOT NULL
);
    DROP TABLE public.areaprof;
       public         heap    postgres    false            �            1259    32879    areaprofissional    TABLE     =   CREATE TABLE public.areaprofissional (
    nome_area text
);
 $   DROP TABLE public.areaprofissional;
       public         heap    postgres    false            �            1259    16427    aula    TABLE     <   CREATE TABLE public.aula (
    nome text,
    email text
);
    DROP TABLE public.aula;
       public         heap    postgres    false            �            1259    16486    cidades    TABLE     6   CREATE TABLE public.cidades (
    nome_cidade text
);
    DROP TABLE public.cidades;
       public         heap    postgres    false            �            1259    16492    cidadess    TABLE     7   CREATE TABLE public.cidadess (
    nome_cidade text
);
    DROP TABLE public.cidadess;
       public         heap    postgres    false            �            1259    16480    clientes    TABLE     j   CREATE TABLE public.clientes (
    nome text,
    tipo text,
    adimplente text,
    nome_cidade text
);
    DROP TABLE public.clientes;
       public         heap    postgres    false            �            1259    32885    curso    TABLE     3   CREATE TABLE public.curso (
    nome_curso text
);
    DROP TABLE public.curso;
       public         heap    postgres    false            �            1259    16466    empresa    TABLE     �   CREATE TABLE public.empresa (
    nome_empresa text,
    cnpj text,
    rua text,
    numero text,
    bairro text,
    cidade text,
    email text,
    cep text,
    estado text,
    celular text
);
    DROP TABLE public.empresa;
       public         heap    postgres    false            �            1259    16445 
   fornecedor    TABLE     �   CREATE TABLE public.fornecedor (
    "ID_FORNECEDOR" integer NOT NULL,
    "NOME_FORNECEDOR" text,
    "CIDADE_FORNECEDOR" text,
    "ESTADO_FORNECEDOR" text,
    "CATEGORIA_FORNECEDOR" text,
    "RAMO_FORNECEDOR" text,
    "ENDERECO_FORNECEDOR" text
);
    DROP TABLE public.fornecedor;
       public         heap    postgres    false            �            1259    32891    imagens    TABLE     B   CREATE TABLE public.imagens (
    id integer,
    imagem bytea
);
    DROP TABLE public.imagens;
       public         heap    postgres    false            �            1259    16453    teste    TABLE     �   CREATE TABLE public.teste (
    nome text,
    area_prof text,
    nascimento text,
    cidade text,
    estado text,
    endereco text
);
    DROP TABLE public.teste;
       public         heap    postgres    false            �            1259    16460    usuario    TABLE     n   CREATE TABLE public.usuario (
    email text,
    senha text,
    nome text,
    perfil text,
    cpf text
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �            1259    32870    vagas    TABLE     o   CREATE TABLE public.vagas (
    nome_empresa text,
    descricao_empresa text,
    data text,
    hora text
);
    DROP TABLE public.vagas;
       public         heap    postgres    false            �          0    32864    aluno 
   TABLE DATA           �   COPY public.aluno (nome, email, estado, cpf, curso, senha, pcd, sobre, imagem, escolaridade, telefone, experiencia) FROM stdin;
    public          postgres    false    210   �%       �          0    16472    areaprof 
   TABLE DATA           :   COPY public.areaprof (id_areaprof, nome_area) FROM stdin;
    public          postgres    false    206   s*       �          0    32879    areaprofissional 
   TABLE DATA           5   COPY public.areaprofissional (nome_area) FROM stdin;
    public          postgres    false    212   �*       �          0    16427    aula 
   TABLE DATA           +   COPY public.aula (nome, email) FROM stdin;
    public          postgres    false    201   �*       �          0    16486    cidades 
   TABLE DATA           .   COPY public.cidades (nome_cidade) FROM stdin;
    public          postgres    false    208   (+       �          0    16492    cidadess 
   TABLE DATA           /   COPY public.cidadess (nome_cidade) FROM stdin;
    public          postgres    false    209   E+       �          0    16480    clientes 
   TABLE DATA           G   COPY public.clientes (nome, tipo, adimplente, nome_cidade) FROM stdin;
    public          postgres    false    207   �+       �          0    32885    curso 
   TABLE DATA           +   COPY public.curso (nome_curso) FROM stdin;
    public          postgres    false    213   �+       �          0    16466    empresa 
   TABLE DATA           o   COPY public.empresa (nome_empresa, cnpj, rua, numero, bairro, cidade, email, cep, estado, celular) FROM stdin;
    public          postgres    false    205   E,       �          0    16445 
   fornecedor 
   TABLE DATA           �   COPY public.fornecedor ("ID_FORNECEDOR", "NOME_FORNECEDOR", "CIDADE_FORNECEDOR", "ESTADO_FORNECEDOR", "CATEGORIA_FORNECEDOR", "RAMO_FORNECEDOR", "ENDERECO_FORNECEDOR") FROM stdin;
    public          postgres    false    202   -       �          0    32891    imagens 
   TABLE DATA           -   COPY public.imagens (id, imagem) FROM stdin;
    public          postgres    false    214   7-       �          0    16453    teste 
   TABLE DATA           V   COPY public.teste (nome, area_prof, nascimento, cidade, estado, endereco) FROM stdin;
    public          postgres    false    203   T-       �          0    16460    usuario 
   TABLE DATA           B   COPY public.usuario (email, senha, nome, perfil, cpf) FROM stdin;
    public          postgres    false    204   F.       �          0    32870    vagas 
   TABLE DATA           L   COPY public.vagas (nome_empresa, descricao_empresa, data, hora) FROM stdin;
    public          postgres    false    211   //       f           2606    16479    areaprof areaprof_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.areaprof
    ADD CONSTRAINT areaprof_pkey PRIMARY KEY (id_areaprof);
 @   ALTER TABLE ONLY public.areaprof DROP CONSTRAINT areaprof_pkey;
       public            postgres    false    206            d           2606    16452    fornecedor fornecedor_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.fornecedor
    ADD CONSTRAINT fornecedor_pkey PRIMARY KEY ("ID_FORNECEDOR");
 D   ALTER TABLE ONLY public.fornecedor DROP CONSTRAINT fornecedor_pkey;
       public            postgres    false    202            h           2606    16499    cidadess nome_cidade 
   CONSTRAINT     l   ALTER TABLE ONLY public.cidadess
    ADD CONSTRAINT nome_cidade UNIQUE (nome_cidade) INCLUDE (nome_cidade);
 >   ALTER TABLE ONLY public.cidadess DROP CONSTRAINT nome_cidade;
       public            postgres    false    209    209            i           2606    16500    clientes fk_nome_cidade    FK CONSTRAINT     �   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT fk_nome_cidade FOREIGN KEY (nome_cidade) REFERENCES public.cidadess(nome_cidade) NOT VALID;
 A   ALTER TABLE ONLY public.clientes DROP CONSTRAINT fk_nome_cidade;
       public          postgres    false    2920    209    207            �   �  x�}UMo�8=ӿ��] bǟ����M'F\�rK�Ö"�$����{(v������Q�c��6L��!g޼y�����t��TQb2v{��o'�į��	i���S���F(�1V>���zQ�ߏNNN��[:�e���INf��w�K�Z��"����7��T��gΗ_��p�q���x��sFV�oLj��%�B+�U���K*�a��0�F�x<�N&,N3���ʯ0
��0�5��
�d*,Y.�*d���É���@��l+l��N8 �e9R"��v.��">�V��z�ݍ�nzG�M��h2�T�Fl�� �,�>��� ���� <@pES�r�a�S�F��7�*��"�����q,�6r�v��P�h0D�/Du.��?�57	�B(i��s��e�h+�/VVV�%V���ֹS������"�K���I+���(�x x*� W���-D*��a��υ�Mej��fי�Xk�-��N���@�s��EF+	 ��gm�[r���t��a�^Hle6�Y�ԹpB��	�,\c�)'yo4`<��ҺE�P�8#��zZFդ�*�ȍ`�T����6��&���n�D��i�	��v+(ШPM	s[>��ӹ,r|)j��0kŴD������M���1��@��qUH� ����W�]	�W U��P&����4	��m/.���1Pa�v,�5m��[�*�����,E&�B�y��X|�W��d	�ey`������&���� �MU���9+�&r]�=�2��4��#/|a�݃Uo�a���f�{�@���5:� �UC끈-%����+a�]aU���-���w�*��fs�6�[���WY~5�~�z. �Fs4Eն�2��z+�� ���O��"�MW����+S�J�J>D�V�>�N��pG|�%rK���>��)����{Tn3�6�|����~���x({��R�mvyy������ju����X��P*��N"V�5�Xo8�����\\ͯo���gqLH�-<���xF"�����I��&#���zi9a����N�D�pW�"�x�8BÎ�D�?�����Dxk�$�X�K��b;������\�4j�����J`��d���5!�=�����ɴw�4��0x"��P
�|<�7��nuĵ��5�����*ߘ�#�m�6�t:�7.*      �      x������ � �      �   1   x�	����
qu����w�t�
vuq�r,.)���O�L����� �!p      �   G   x�K**���L�鹉�9z���\!�AΎѢ��DC$I��P?��X�!1G�85/1Y/��+F��� &h�      �      x������ � �      �   -   x��MLN�<��+(593-�+81�,1%��˱(191��+F��� �g      �   @   x���w�����;���雘��yx3�����gH8�ӗ381�,1%���)(���Uq� p�      �   c   x�	������s��=�������r�ٟ+�����?�ӑ�9�87?'?=3��%�L��4''�$19[߱��*�����T^�X������� ��      �   �   x�}�A�0E��S�ԅ&-���
l$)�s3BC��@��#x1ۊƅ1������;�lP�pwRH��a���u�,*,ϳ���}9��Dbj���.���'�2��"݄1p�/<2�q�cg:�uY�QvՑ�;��g���0T�H�b�I�����mw`�-��1f�|ܡ��/�`�=69��S�R�f��'%�U�      �      x������ � �      �      x������ � �      �   �   x���AJ�@����)�ͤ ���i\���<Ӂ�<xo���F\x ����(� ����R�\$����j���޴�)�o�ٙ}�k�X&���)UN&�'�i~Ρ��9�\���v�`��"���[��4��4����;�<���}U��gs����n)�ehGc��n`����o]��׿�-Ev-H�S�0[�!_��;{�H�[���BY���Z�pu�      �   �   x���K�0E��*�"
�3�4��c,�	�"�b�M��%�7�EM��'���EV|~*X�kGY�8 ������`o�@Ox�yVI�q�4�fR6B����������<�Ι`M���\��P�wL�Ld<�NKߢe��Җj��A[Bi��C��������ܔ�m�R�bI�)	������ZɂW(���"��~c�z�Ԟ�#k�zȁ      �     x��V�r�6}&_�l��)�Cْ����/7���-W�if�;ә}������Iva��Ƕd�s�=���"�䭟�Q+��vg�:-�?��F��7|��1�=�3޶��uNlM��ă��L�������^���:� ��K��Ɉ�I�򻣾?�C��a��7� iX��+��P�2F��ua�{ӥ��3�T��j-rF�E*?Y�f�Zߢ�B�����~��8{�Кw��N2A'~��4�*�Zd�$M���^SN��/ᆣn�u��=�Y����$~���.�;� �>�}�%K��a���b{�q<�F|c�:�/�#M%�
�i.4Ur�<6M	�͗B"b��P�cad*5�%Bn=6��q�2u��bdB,Q�**[S����I�l��~�.�K��/q�c�^�M�*���m>�.C-Q&RY����}q4��":����ó �ݖwa�H
���AIi8/���A抑bKM�LV�c[{V	��jG��C�������x�E*+G�P�T(�DR�RLl	����N�coD�X�Z��&�9�U9G��1��x<���-��t;[!X�+���NR����&
�K:mrh�0�d~,���F͎�s$	N����L�t��a�fv��	�
d��R��FhJ]�T2�%�]�҅@�@�tN��
s�tN�ϛ�&>!Q
Q�!�L�$�Ѩ�ƒ���F(9Rj�`�D�˘�����5V9sj��G#�������!�
��{
��^�)�P
-7���قidO2ic9e+�Ѳ�5��s�(3�c
U-��6��H�.qv���j�+]7ñ\K[ �Ri��n5�	�!S" �ld��|�kSC�k��Ȝ�Ym�r�'�-e+���[m�� Jb+�M U�I
HMЧ�@M����r�hK)�M���*�x(1��2�p��q?�IΦWK��h��AO����������N�3���jN�o�N �*�� ��p�o��|���9B�-���ƞYp�O�gxx��jJ�wX��Vő0�5�l+ԁ
�{'''�q�_     