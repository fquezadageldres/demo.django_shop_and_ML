PGDMP         0                x            store    11.8    11.8 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    16593    store    DATABASE     �   CREATE DATABASE store WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE store;
             postgres    false            �            1259    16625 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false            �            1259    16623    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    203            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       postgres    false    202            �            1259    16635    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false            �            1259    16633    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    205            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       postgres    false    204            �            1259    16617    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false            �            1259    16615    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    201            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       postgres    false    200            �            1259    16643 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         postgres    false            �            1259    16653    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false            �            1259    16651    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    209            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       postgres    false    208            �            1259    16641    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    207            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       postgres    false    206            �            1259    16661    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false            �            1259    16659 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    211            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       postgres    false    210            �            1259    16721    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         postgres    false            �            1259    16719    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    213            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       postgres    false    212            �            1259    16607    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false            �            1259    16605    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    199            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       postgres    false    198            �            1259    16596    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false            �            1259    16594    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    197            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       postgres    false    196            �            1259    16752    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false            �            1259    16764    store_customer    TABLE       CREATE TABLE public.store_customer (
    id integer NOT NULL,
    name character varying(100),
    email character varying(200) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    user_id integer
);
 "   DROP TABLE public.store_customer;
       public         postgres    false            �            1259    16762    store_customer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.store_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.store_customer_id_seq;
       public       postgres    false    216            �           0    0    store_customer_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.store_customer_id_seq OWNED BY public.store_customer.id;
            public       postgres    false    215            �            1259    16774    store_order    TABLE       CREATE TABLE public.store_order (
    id integer NOT NULL,
    complete boolean NOT NULL,
    transaction_id character varying(100),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    customer_id integer
);
    DROP TABLE public.store_order;
       public         postgres    false            �            1259    16772    store_order_id_seq    SEQUENCE     �   CREATE SEQUENCE public.store_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.store_order_id_seq;
       public       postgres    false    218            �           0    0    store_order_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.store_order_id_seq OWNED BY public.store_order.id;
            public       postgres    false    217            �            1259    16801    store_orderitem    TABLE     �   CREATE TABLE public.store_orderitem (
    id integer NOT NULL,
    quantity integer,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    order_id integer,
    product_id integer
);
 #   DROP TABLE public.store_orderitem;
       public         postgres    false            �            1259    16799    store_orderitem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.store_orderitem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.store_orderitem_id_seq;
       public       postgres    false    224            �           0    0    store_orderitem_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.store_orderitem_id_seq OWNED BY public.store_orderitem.id;
            public       postgres    false    223            �            1259    16782    store_product    TABLE     o  CREATE TABLE public.store_product (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    "desc" text NOT NULL,
    category character varying(100) NOT NULL,
    img character varying(100) NOT NULL,
    price integer NOT NULL,
    digital boolean,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 !   DROP TABLE public.store_product;
       public         postgres    false            �            1259    16780    store_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.store_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.store_product_id_seq;
       public       postgres    false    220            �           0    0    store_product_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.store_product_id_seq OWNED BY public.store_product.id;
            public       postgres    false    219            �            1259    16793    store_shippingadress    TABLE       CREATE TABLE public.store_shippingadress (
    id integer NOT NULL,
    adress character varying(200) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    customer_id integer,
    order_id integer
);
 (   DROP TABLE public.store_shippingadress;
       public         postgres    false            �            1259    16791    store_shippingadress_id_seq    SEQUENCE     �   CREATE SEQUENCE public.store_shippingadress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.store_shippingadress_id_seq;
       public       postgres    false    222            �           0    0    store_shippingadress_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.store_shippingadress_id_seq OWNED BY public.store_shippingadress.id;
            public       postgres    false    221            �
           2604    16628    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    203    203            �
           2604    16638    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    205    205            �
           2604    16620    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    201    201            �
           2604    16646    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    207    207            �
           2604    16656    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    208    209            �
           2604    16664    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    210    211            �
           2604    16724    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    213    212    213            �
           2604    16610    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199            �
           2604    16599    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            �
           2604    16767    store_customer id    DEFAULT     v   ALTER TABLE ONLY public.store_customer ALTER COLUMN id SET DEFAULT nextval('public.store_customer_id_seq'::regclass);
 @   ALTER TABLE public.store_customer ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    216    215    216            �
           2604    16777    store_order id    DEFAULT     p   ALTER TABLE ONLY public.store_order ALTER COLUMN id SET DEFAULT nextval('public.store_order_id_seq'::regclass);
 =   ALTER TABLE public.store_order ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    217    218    218            �
           2604    16804    store_orderitem id    DEFAULT     x   ALTER TABLE ONLY public.store_orderitem ALTER COLUMN id SET DEFAULT nextval('public.store_orderitem_id_seq'::regclass);
 A   ALTER TABLE public.store_orderitem ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    223    224    224            �
           2604    16785    store_product id    DEFAULT     t   ALTER TABLE ONLY public.store_product ALTER COLUMN id SET DEFAULT nextval('public.store_product_id_seq'::regclass);
 ?   ALTER TABLE public.store_product ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    219    220    220            �
           2604    16796    store_shippingadress id    DEFAULT     �   ALTER TABLE ONLY public.store_shippingadress ALTER COLUMN id SET DEFAULT nextval('public.store_shippingadress_id_seq'::regclass);
 F   ALTER TABLE public.store_shippingadress ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    222    221    222            �          0    16625 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    203   ��       �          0    16635    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    205   ��       �          0    16617    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    201   ƿ       �          0    16643 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    207   ��       �          0    16653    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    209   ��       �          0    16661    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    211   ��       �          0    16721    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    213   �       �          0    16607    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    199   ��       �          0    16596    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    197   o�       �          0    16752    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    214   �       �          0    16764    store_customer 
   TABLE DATA               Z   COPY public.store_customer (id, name, email, created_at, updated_at, user_id) FROM stdin;
    public       postgres    false    216   �       �          0    16774    store_order 
   TABLE DATA               h   COPY public.store_order (id, complete, transaction_id, created_at, updated_at, customer_id) FROM stdin;
    public       postgres    false    218   ��       �          0    16801    store_orderitem 
   TABLE DATA               e   COPY public.store_orderitem (id, quantity, created_at, updated_at, order_id, product_id) FROM stdin;
    public       postgres    false    224   	�       �          0    16782    store_product 
   TABLE DATA               p   COPY public.store_product (id, name, "desc", category, img, price, digital, created_at, updated_at) FROM stdin;
    public       postgres    false    220   ��       �          0    16793    store_shippingadress 
   TABLE DATA               i   COPY public.store_shippingadress (id, adress, created_at, updated_at, customer_id, order_id) FROM stdin;
    public       postgres    false    222   ��       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       postgres    false    202            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       postgres    false    204            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);
            public       postgres    false    200            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public       postgres    false    208            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);
            public       postgres    false    206            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    210            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 47, true);
            public       postgres    false    212            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);
            public       postgres    false    198            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 18, true);
            public       postgres    false    196            �           0    0    store_customer_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.store_customer_id_seq', 2, true);
            public       postgres    false    215            �           0    0    store_order_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.store_order_id_seq', 2, true);
            public       postgres    false    217            �           0    0    store_orderitem_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.store_orderitem_id_seq', 35, true);
            public       postgres    false    223            �           0    0    store_product_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.store_product_id_seq', 12, true);
            public       postgres    false    219            �           0    0    store_shippingadress_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.store_shippingadress_id_seq', 1, false);
            public       postgres    false    221            �
           2606    16750    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    203            �
           2606    16677 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    205    205            �
           2606    16640 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    205            �
           2606    16630    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    203            �
           2606    16668 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    201    201            �
           2606    16622 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    201                        2606    16658 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    209                       2606    16692 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         postgres    false    209    209            �
           2606    16648    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    207                       2606    16666 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    211            	           2606    16706 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         postgres    false    211    211            �
           2606    16744     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    207                       2606    16730 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    213            �
           2606    16614 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    199    199            �
           2606    16612 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    199            �
           2606    16604 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    197                       2606    16759 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    214                       2606    16769 "   store_customer store_customer_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.store_customer
    ADD CONSTRAINT store_customer_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.store_customer DROP CONSTRAINT store_customer_pkey;
       public         postgres    false    216                       2606    16771 )   store_customer store_customer_user_id_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.store_customer
    ADD CONSTRAINT store_customer_user_id_key UNIQUE (user_id);
 S   ALTER TABLE ONLY public.store_customer DROP CONSTRAINT store_customer_user_id_key;
       public         postgres    false    216                       2606    16779    store_order store_order_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.store_order
    ADD CONSTRAINT store_order_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.store_order DROP CONSTRAINT store_order_pkey;
       public         postgres    false    218            !           2606    16806 $   store_orderitem store_orderitem_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.store_orderitem
    ADD CONSTRAINT store_orderitem_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.store_orderitem DROP CONSTRAINT store_orderitem_pkey;
       public         postgres    false    224                       2606    16790     store_product store_product_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.store_product
    ADD CONSTRAINT store_product_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.store_product DROP CONSTRAINT store_product_pkey;
       public         postgres    false    220                       2606    16798 .   store_shippingadress store_shippingadress_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.store_shippingadress
    ADD CONSTRAINT store_shippingadress_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.store_shippingadress DROP CONSTRAINT store_shippingadress_pkey;
       public         postgres    false    222            �
           1259    16751    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    203            �
           1259    16688 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    205            �
           1259    16689 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    205            �
           1259    16674 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    201            �
           1259    16704 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         postgres    false    209                       1259    16703 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         postgres    false    209                       1259    16718 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         postgres    false    211                       1259    16717 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         postgres    false    211            �
           1259    16745     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    207            
           1259    16741 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    213                       1259    16742 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    213                       1259    16761 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    214                       1259    16760 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    214                       1259    16817     store_order_customer_id_13d6d43e    INDEX     _   CREATE INDEX store_order_customer_id_13d6d43e ON public.store_order USING btree (customer_id);
 4   DROP INDEX public.store_order_customer_id_13d6d43e;
       public         postgres    false    218                       1259    16840 !   store_orderitem_order_id_acf8722d    INDEX     a   CREATE INDEX store_orderitem_order_id_acf8722d ON public.store_orderitem USING btree (order_id);
 5   DROP INDEX public.store_orderitem_order_id_acf8722d;
       public         postgres    false    224            "           1259    16841 #   store_orderitem_product_id_f2b098d4    INDEX     e   CREATE INDEX store_orderitem_product_id_f2b098d4 ON public.store_orderitem USING btree (product_id);
 7   DROP INDEX public.store_orderitem_product_id_f2b098d4;
       public         postgres    false    224                       1259    16828 )   store_shippingadress_customer_id_f3ee5d6b    INDEX     q   CREATE INDEX store_shippingadress_customer_id_f3ee5d6b ON public.store_shippingadress USING btree (customer_id);
 =   DROP INDEX public.store_shippingadress_customer_id_f3ee5d6b;
       public         postgres    false    222                       1259    16829 &   store_shippingadress_order_id_1e10ff4a    INDEX     k   CREATE INDEX store_shippingadress_order_id_1e10ff4a ON public.store_shippingadress USING btree (order_id);
 :   DROP INDEX public.store_shippingadress_order_id_1e10ff4a;
       public         postgres    false    222            %           2606    16683 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    2797    205    201            $           2606    16678 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    205    2802    203            #           2606    16669 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    2792    199    201            '           2606    16698 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    203    2802    209            &           2606    16693 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    209    2810    207            )           2606    16712 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    2797    211    201            (           2606    16707 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    211    2810    207            *           2606    16731 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    199    2792    213            +           2606    16736 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       postgres    false    2810    213    207            ,           2606    16807 >   store_customer store_customer_user_id_04276401_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.store_customer
    ADD CONSTRAINT store_customer_user_id_04276401_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.store_customer DROP CONSTRAINT store_customer_user_id_04276401_fk_auth_user_id;
       public       postgres    false    207    2810    216            -           2606    16812 A   store_order store_order_customer_id_13d6d43e_fk_store_customer_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.store_order
    ADD CONSTRAINT store_order_customer_id_13d6d43e_fk_store_customer_id FOREIGN KEY (customer_id) REFERENCES public.store_customer(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.store_order DROP CONSTRAINT store_order_customer_id_13d6d43e_fk_store_customer_id;
       public       postgres    false    2835    216    218            0           2606    16830 C   store_orderitem store_orderitem_order_id_acf8722d_fk_store_order_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.store_orderitem
    ADD CONSTRAINT store_orderitem_order_id_acf8722d_fk_store_order_id FOREIGN KEY (order_id) REFERENCES public.store_order(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.store_orderitem DROP CONSTRAINT store_orderitem_order_id_acf8722d_fk_store_order_id;
       public       postgres    false    224    2840    218            1           2606    16835 G   store_orderitem store_orderitem_product_id_f2b098d4_fk_store_product_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.store_orderitem
    ADD CONSTRAINT store_orderitem_product_id_f2b098d4_fk_store_product_id FOREIGN KEY (product_id) REFERENCES public.store_product(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.store_orderitem DROP CONSTRAINT store_orderitem_product_id_f2b098d4_fk_store_product_id;
       public       postgres    false    220    224    2842            .           2606    16818 S   store_shippingadress store_shippingadress_customer_id_f3ee5d6b_fk_store_customer_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.store_shippingadress
    ADD CONSTRAINT store_shippingadress_customer_id_f3ee5d6b_fk_store_customer_id FOREIGN KEY (customer_id) REFERENCES public.store_customer(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.store_shippingadress DROP CONSTRAINT store_shippingadress_customer_id_f3ee5d6b_fk_store_customer_id;
       public       postgres    false    216    222    2835            /           2606    16823 M   store_shippingadress store_shippingadress_order_id_1e10ff4a_fk_store_order_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.store_shippingadress
    ADD CONSTRAINT store_shippingadress_order_id_1e10ff4a_fk_store_order_id FOREIGN KEY (order_id) REFERENCES public.store_order(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.store_shippingadress DROP CONSTRAINT store_shippingadress_order_id_1e10ff4a_fk_store_order_id;
       public       postgres    false    218    222    2840            �      x������ � �      �      x������ � �      �   �  x�m��n�0F����	����^c�TAD�V@6��l'�i�}��_p��6��-~Ʈ�C��ƙ���kX���~:�(,1X��4�%k {������1�M~~��ҏ�)A��$�Hv�=K?Œ�`/��Hp�5[v�N�A��� �R��q�)!�CH�*	 jW�`]�lj�>����ԥ�8��	��8��Ԇ��y�'7��Ԋ�9����u)��IH�W���O��5w4�*�e���TO L+[��3C�Sig��2&��Xe��ެK��x���������ePe\���2(.0��q�ǹ�����V*ݩOB��t'�T�N HP��=�c�6�\��+[��3�^�T�K?a"��O�~����]\�q�&�w��j+�7{R�v��x�-Mo��Sx�	�������>��q�g�l]��;�r�W/�ϰ�?��.�$ ��a��R�Ek      �     x�m�_k�0���S��7��I�&�ݦ��)�΍����Zk�4Vܧ_2v�.���g�r��)������94g���y4^�r�5w�3�U�Q1l���Ӽ��+J�)v�i�ڕ� |��� �ڱ��]�`�=������h�U��:����<d�D�5鮥R��ֲh��Ϣ�u�)�/��J����~^�X�>[�*��%)g�)|���.vC=�{�	�,������v��� nQ�m~���R#�үc���&��*���"��W�����D.��\���e��xg&      �      x������ � �      �      x������ � �      �   �  x����rG���)��R�B�/�o�a�*�V��P�x1��<���e��W�C��rz٨��{�@��ާyG0��Lu�%\$` j#�:������_�A����łH��|��4����4!�>~�q~""I���QF
$E�b���F��(=�L�ƆDR6z~���}rƹ�����lr@S&�6���� 9{�.nk�ӿ3�ϗ���������
�� jAp	�y�d���2��*��}����n�`�Ae�LǓ0��2�<�
kу����r�D���~�Aw{���<9덡-�6���T	��iؖ�$}�Y�9����U�}�f������q�U�P��2�J� v�'c�n�|�ɤ7n�,V7��TeE��5[�.W��A�k����?�����G2��(<��*
L7�b�t��}A^�\.zd��!����(g����\+F ��u���D��a	Y�
�팯.�dr=̲�p>z�`J�ˬh�ɘ�&��ֺ*��s��&)~Z�ɔ(�����I�Rm$�I�EA2S�f�(r_���ʇ��o��_yһ����~񁌯4c��*������q&4W��Yô�7C�6�Y`��N�H��l��My�g���?y�x�0M������q��ر䲘��`��$�]��%���ޓA�ls.����)��SsX��Y��茿O��)�� �%MAs#7��8j�w7N��x=�G���X�;R����V8�v����6r�ZN�z�7�vεZ.nT�S�Ì��`n��v���I���	��!N�}T�&�%�o�(�m�x%P���PU{H���{���w *HA�`F�=��Rx\�P��
)�umeV�%�����)��<��u� ��Vi��#�kZ�	F�5T�vP�o=�=s�0+xl�L6������{�0D� ���Ӡ�.��̐;�0�)��=~98�h� B.���5�0���nY�c�&G3L�>|s=�mv��_�8�'/�!���:������G�ߘs�Z����x�+����p�a�k�/-s������/ݰ�Y|�2�r�`����/�z�"���^���I2l�jy�T��r��/�� 	K؄+�X4�<����4�(�s�벼ɖl�^U�
.��j��#}[b_<�Y�\�E������t�gwi�DcL�u�*����)�m  �md��U�MS�
5�[�Ҳh�EONN�\ē�      �   �   x�M��
!��Ô���K/����$��W���o&|,�U�/�-�HJV�\�$��v�J�w\md�6�#��~��>A�� �q��_S��A�IM8�`��S�[�5�(�:w̲Q��	7i�D�      �   �  x���An� E��)z�T0=K�J�����jn_ �������7@���S�L&6��v��j� r$����7F^)g�#i��9}>�P��,	���`��pF9/��t�υ�3�o��~��|�f	D�1؍�s�O��?������)�du@�����Y6�����R����n��]2'c)��q�?����S�(ީ���bj�y1��n�����VJ{O)K-�Oi[#R�P��~�p:�����f�=�<r)X�Е"�ݯنUo��E����:����-�|kg�:���M>�`b����3�򪘲'7��ifB��oh���?GO�Z������?O�a8��K�b�P���������E>�#J��5�,'w�7a�Q�&恘�L �v��z8~�yO�      �   �  x���͎�0��^�܀�}�bIf��0J4�����`˧��W?���\���K�뼓�i S^�7���p�G�$%�d�T�Y
��Sk����j/�O�(	rɪ��ek�}2݆�"����4�,�N�½�b1lq��Y�7T$;��Q�U/R�ĳ��Z6f�^"wH�>�].����6�<�k��;���Y>�-�9�2�s8>L����a�����7/� s<�:��dJԶe�F�`�z�O�ڍp;�>h���7�,D-�%�4�@�<��	S�K|������뺤���6��h3�vʽ ���p\驢�&�j�X���N���"�)V�����������k�%��IV��(�<w|����u��Y?e�+b�Φ� K�uX=�J���8�8e�M�o4�G*�L^^f�aY]����=l�q�(��z��USù����2�b����m�4���������       �   �   x�m�;�0Dk��@�]�W������YJb�
N�' ����<�⧐�����j���Y�/�Я��G��(����UH�Ǥ���+��*��V[D~1�FӜ?-Q�ީ����
�GpD��05�����IK)�5�      �   U   x�u̱�0D�:�"�:_�{j�hB�~_��Q�D�hܪ�tO���Eo����lo5���SuT��H�1�~���*"'9��      �   �   x�u��m� ���x�,d�c��,��Bi�ۖ<!�[��;��K㢞V�[���q�K���rգ	t��xD��#�f��3�m�(�>(�zڷ���GF�V��V��/E��w���4��n>���?���N�u�E�{�1�fgv�����E["�B ��M^������Ce5,���",d0�GfMf[��{�+�e(      �     x��YMo��=˿�/؈�!)��8���F���8�^�TKn/��6I�=�`��ar�  �����$��IY�(��#��UU�^��	Z����%N��	���!5����?n��_���+��~8�U.��$��3c�L��J��Sc�H0��*-�2�I=��O�O�XJ+�\&:ե�B�¬�MR����'.�$���E��5I�)�o����*�헿�gZ<y��B�ba��:1�F��}���y�ʻe&����?������%��)$�k���fU�g�k]olTEKf��{\.Zq�ּ�������/�p��Q��a/��~��5�Agu�A�|=[�y��: �8�kz�!:�?c�ɉ8�n�^�G[gy5�7Ƀy���=?���;��R�A)V
��39���[S��˯��lY������$�����p�l)K}���Ӿ�_Y �b�J8�^J\�G��:�p�-�il,`��U�R���N&�OB�AC��8LB=9�4�g*3VKqvv��8���,֟q��l>��o���իh�.�Q�{���a���q'�x�Ž�ۋ(��֨�
�{�愓�$����H\[�)q8�DG�������7,Jk�����Rd�ia%�dT�S�N݁a����`1�|{���!GJ V��*U✉�Re�C��1��y��J--�1��Ϧ�5��JJ�b ���H�%��"UO�ILߊjiU���nz b�r��x�d�cexIy�>H���T����<
��][�E�-��:?7�cQ�<�_�	X�z:�2��PaV�5a��k��A��ϒ)j��'�5�w�)�t|�����	�y�Wf7U���%�.���^SʴuM��D9c*�Q��:� �/�\�^hub/�� `hE��r�>��~�[q�v,���O[<2͂:���j�U�J���?)vٶ��	��,<����wU$V#j�x不)XC1��؉�7!B�s��V��jf�X�Bb��`.y 0�w<�����?"��8 i�,�cU�yH�|����y*�j�����NU��LW�@���ę ����F�-8�!%���Iy0z�
Z�Q��D
��%�Y �溆�}��h����^��S�k
����Y�.��4C���S��V3m�"�J:J�ٽ&�wk�6����T�ũʍPh� ����8��)m�I.-q�����طziĨ�
����X/�.�y��l��cq5�n\!I��X�m��a�ʲ�S�;�����L9��3E��*Tq.�;�D�9��N�ۗO(ϡ�����?�BϏa���3���1�1���y��;�}%gl�J�����lz{~u5�!�$"�bь���Owj�"�r��A�I+"h*	�9��0$��R�-`B��*�CM�F��R��ݛW�<�F`Qg�^�M��L�"UV�O<��z�GQT�?�X��,0��X>7OR)D���	����s����s��]pކ?����}D��F���j�aM���{7{��, <�$��[�dC5t��*��:��`9�9��\Y
�����䦎�,-�B��[�K
�h���_��k5+6�sš����9�Qu��p��ͤL�~�ӋCFs�����k3Tc������iU�����^�����-��J���Y��N̼���e�$EJ�����ev����Ռ�햆���mŷ�3�}��is�ˍ��;r&��Q8AkO	,%h��J��Zj8�4,P�~ړUi���tɼ�*�iU�^[�$ܯ��*��k972��ʍ���h_�C?���A����B�Q��ŭ�B�-����X�Gf���O����N�MZ���ɤM�D?�(q/��d�:rv9���lT�3LlӚ��}#���O�v0}����%�p(O���Hq���4����}��Y<�7��G%
"*�C��W��	�����}|M��ĭ���3�y�Ff��u�1|4��������W���>}=�[@�	<�s�ΣF�����C��g���e�2\�(w +tV�]��r@Ë<uH���4�y����a��wK�D�
���V�����v��$HT����	��^ͩJ�����F}����`;���[��}�|$rvA�Y�[������5rL�fMSM	��AE�^�9�e�n �o"�ݯi��7���8D&�/���N�C�k��{��߽�<����nP*Hp���.����d�� �c5H�QT�Q�y$���H��.�"�F�Gl����A��Z�X��2%���j�4u�����B��t$�ّK�|o�����re,��Ī���{����C�Y�D�]�k��-��1���/l���?��ᣚ�	���O�0�:���x"�d��3UE+V����K䐄|�@����t�ļ"��a�ނ&f�p(P�ełg�g�DMqݘ4g{ހ��M��������7���	J���՗Iq��k�fn�֝���gICR�Ͷ�r�9�(16�`�	ع���Ѩ*M���$�/(��I�=(|C'�2�Vt����Y���(�wE���iSU�(�BQ�\o��;rAfQE3�c+uߘ͎�4�i�ꛀ��1�i��0t�N�����\v���{(�����X�m�}�D�t��@��M<j?��n���mc��P��i�����(x�EAg/�=�����~k2���wj ��ޡ���Z��a�;q��:1P2┮;�qBZ�y� Ϊ��$�X_T�nWPiz��"y럑�/��b�1��{l��fܨ��<����2�[z�A�����.��]V}�zs'�]߿�oI�lnZ�3� ��t(��������03`���G0�^G��C��0��a�ۺ�=i���N��TY���R�lF^��	J��4�Uݥ�#<��ME��R�5�t��Ābi�e�/f'6D�ۊn���� ���t�d�h'�Q��+���>^�
��ղtՄ��mь�
��l���w��
�w/��f�L`]����;��f�����=5��v���0u�"g��i��|��N�g�F�ý�"�A�G'. �bs�/��3�77N�����]W��`g[)�uAi������:u�d��YisI�j0JpLך�vi�/O�i8銨d�s#�K�HT�T�ܬ�и�$��*�����C}����7��/u,��{���t���?�Xaw���]�X>	�8����!���v�����]���'�IL��1Nu�R��u�����k��"ߍj����HtZ��g9��4�5'����o����9� �i�r�>��]�Ѳ���^kgBƇu\���ycb�(���}L�޺�u��*������	�Mf      �      x������ � �     