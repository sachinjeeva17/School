PGDMP                         y            school    11.13    11.13 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    16393    school    DATABASE     �   CREATE DATABASE school WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE school;
             postgres    false            �            1259    16425 
   auth_group    TABLE     e   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false            �            1259    16423    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    203            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       postgres    false    202            �            1259    16435    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false            �            1259    16433    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    205            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       postgres    false    204            �            1259    16417    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false            �            1259    16415    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    201            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       postgres    false    200            �            1259    16443 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         postgres    false            �            1259    16453    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false            �            1259    16451    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    209            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       postgres    false    208            �            1259    16441    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    207            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       postgres    false    206            �            1259    16461    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false            �            1259    16459 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    211            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       postgres    false    210            �            1259    16521    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         postgres    false            �            1259    16519    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    213            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       postgres    false    212            �            1259    16407    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false            �            1259    16405    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    199            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       postgres    false    198            �            1259    16396    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false            �            1259    16394    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    197            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       postgres    false    196            �            1259    16549    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false            �            1259    16642    pageadmin_ad_staff    TABLE     Q  CREATE TABLE public.pageadmin_ad_staff (
    id integer NOT NULL,
    staffname character varying(100) NOT NULL,
    stream character varying(100) NOT NULL,
    date character varying(100) NOT NULL,
    school character varying(100) NOT NULL,
    gender character varying(100) NOT NULL,
    experience character varying(100) NOT NULL
);
 &   DROP TABLE public.pageadmin_ad_staff;
       public         postgres    false            �            1259    16640    pageadmin_ad_staff_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pageadmin_ad_staff_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.pageadmin_ad_staff_id_seq;
       public       postgres    false    230            �           0    0    pageadmin_ad_staff_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.pageadmin_ad_staff_id_seq OWNED BY public.pageadmin_ad_staff.id;
            public       postgres    false    229            �            1259    16573    student_feedbackmodel    TABLE     �   CREATE TABLE public.student_feedbackmodel (
    id integer NOT NULL,
    feedback character varying(300) NOT NULL,
    username_id integer NOT NULL
);
 )   DROP TABLE public.student_feedbackmodel;
       public         postgres    false            �            1259    16571    student_feedbackmodel_id_seq    SEQUENCE     �   CREATE SEQUENCE public.student_feedbackmodel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.student_feedbackmodel_id_seq;
       public       postgres    false    218            �           0    0    student_feedbackmodel_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.student_feedbackmodel_id_seq OWNED BY public.student_feedbackmodel.id;
            public       postgres    false    217            �            1259    16561    student_registeration    TABLE     t  CREATE TABLE public.student_registeration (
    id integer NOT NULL,
    fname character varying(300) NOT NULL,
    lname character varying(300) NOT NULL,
    "user" character varying(300) NOT NULL,
    password character varying(300) NOT NULL,
    email character varying(25) NOT NULL,
    num character varying(15) NOT NULL,
    gender character varying(15) NOT NULL
);
 )   DROP TABLE public.student_registeration;
       public         postgres    false            �            1259    16559    student_registeration_id_seq    SEQUENCE     �   CREATE SEQUENCE public.student_registeration_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.student_registeration_id_seq;
       public       postgres    false    216            �           0    0    student_registeration_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.student_registeration_id_seq OWNED BY public.student_registeration.id;
            public       postgres    false    215            �            1259    16614    teacher_ad_student    TABLE     F  CREATE TABLE public.teacher_ad_student (
    id integer NOT NULL,
    studentname character varying(100) NOT NULL,
    clas character varying(100) NOT NULL,
    date character varying(100) NOT NULL,
    rno character varying(100) NOT NULL,
    gender character varying(100) NOT NULL,
    ad character varying(100) NOT NULL
);
 &   DROP TABLE public.teacher_ad_student;
       public         postgres    false            �            1259    16598    teacher_notificationmodel    TABLE     �   CREATE TABLE public.teacher_notificationmodel (
    id integer NOT NULL,
    date character varying(100) NOT NULL,
    notify character varying(300) NOT NULL
);
 -   DROP TABLE public.teacher_notificationmodel;
       public         postgres    false            �            1259    16596     teacher_notificationmodel_id_seq    SEQUENCE     �   CREATE SEQUENCE public.teacher_notificationmodel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.teacher_notificationmodel_id_seq;
       public       postgres    false    222            �           0    0     teacher_notificationmodel_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.teacher_notificationmodel_id_seq OWNED BY public.teacher_notificationmodel.id;
            public       postgres    false    221            �            1259    16612    teacher_student_id_seq    SEQUENCE     �   CREATE SEQUENCE public.teacher_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.teacher_student_id_seq;
       public       postgres    false    226            �           0    0    teacher_student_id_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE public.teacher_student_id_seq OWNED BY public.teacher_ad_student.id;
            public       postgres    false    225            �            1259    16587    teacher_teach_reg    TABLE     F  CREATE TABLE public.teacher_teach_reg (
    id integer NOT NULL,
    username character varying(300) NOT NULL,
    password character varying(300) NOT NULL,
    email character varying(25) NOT NULL,
    num character varying(15) NOT NULL,
    gender character varying(15) NOT NULL,
    file character varying(100) NOT NULL
);
 %   DROP TABLE public.teacher_teach_reg;
       public         postgres    false            �            1259    16585    teacher_teach_reg_id_seq    SEQUENCE     �   CREATE SEQUENCE public.teacher_teach_reg_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.teacher_teach_reg_id_seq;
       public       postgres    false    220            �           0    0    teacher_teach_reg_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.teacher_teach_reg_id_seq OWNED BY public.teacher_teach_reg.id;
            public       postgres    false    219            �            1259    16625    teacher_teachermodel    TABLE       CREATE TABLE public.teacher_teachermodel (
    id integer NOT NULL,
    feedback character varying(300) NOT NULL,
    day integer NOT NULL,
    date character varying(100) NOT NULL,
    reason character varying(100) NOT NULL,
    username_id integer NOT NULL
);
 (   DROP TABLE public.teacher_teachermodel;
       public         postgres    false            �            1259    16623    teacher_teachermodel_id_seq    SEQUENCE     �   CREATE SEQUENCE public.teacher_teachermodel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.teacher_teachermodel_id_seq;
       public       postgres    false    228            �           0    0    teacher_teachermodel_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.teacher_teachermodel_id_seq OWNED BY public.teacher_teachermodel.id;
            public       postgres    false    227            �            1259    16606    teacher_upload_material    TABLE     �   CREATE TABLE public.teacher_upload_material (
    id integer NOT NULL,
    name character varying(300) NOT NULL,
    upload character varying(100) NOT NULL,
    description character varying(25) NOT NULL
);
 +   DROP TABLE public.teacher_upload_material;
       public         postgres    false            �            1259    16604    teacher_upload_material_id_seq    SEQUENCE     �   CREATE SEQUENCE public.teacher_upload_material_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.teacher_upload_material_id_seq;
       public       postgres    false    224            �           0    0    teacher_upload_material_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.teacher_upload_material_id_seq OWNED BY public.teacher_upload_material.id;
            public       postgres    false    223            �
           2604    16428    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    202    203            �
           2604    16438    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    204    205            �
           2604    16420    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    201    201            �
           2604    16446    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    207    207            �
           2604    16456    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    208    209    209            �
           2604    16464    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    210    211            �
           2604    16524    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    213    212    213            �
           2604    16410    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199            �
           2604    16399    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197            �
           2604    16645    pageadmin_ad_staff id    DEFAULT     ~   ALTER TABLE ONLY public.pageadmin_ad_staff ALTER COLUMN id SET DEFAULT nextval('public.pageadmin_ad_staff_id_seq'::regclass);
 D   ALTER TABLE public.pageadmin_ad_staff ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    229    230    230            �
           2604    16576    student_feedbackmodel id    DEFAULT     �   ALTER TABLE ONLY public.student_feedbackmodel ALTER COLUMN id SET DEFAULT nextval('public.student_feedbackmodel_id_seq'::regclass);
 G   ALTER TABLE public.student_feedbackmodel ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    218    217    218            �
           2604    16564    student_registeration id    DEFAULT     �   ALTER TABLE ONLY public.student_registeration ALTER COLUMN id SET DEFAULT nextval('public.student_registeration_id_seq'::regclass);
 G   ALTER TABLE public.student_registeration ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    215    216    216            �
           2604    16617    teacher_ad_student id    DEFAULT     {   ALTER TABLE ONLY public.teacher_ad_student ALTER COLUMN id SET DEFAULT nextval('public.teacher_student_id_seq'::regclass);
 D   ALTER TABLE public.teacher_ad_student ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    226    225    226            �
           2604    16601    teacher_notificationmodel id    DEFAULT     �   ALTER TABLE ONLY public.teacher_notificationmodel ALTER COLUMN id SET DEFAULT nextval('public.teacher_notificationmodel_id_seq'::regclass);
 K   ALTER TABLE public.teacher_notificationmodel ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    222    221    222            �
           2604    16590    teacher_teach_reg id    DEFAULT     |   ALTER TABLE ONLY public.teacher_teach_reg ALTER COLUMN id SET DEFAULT nextval('public.teacher_teach_reg_id_seq'::regclass);
 C   ALTER TABLE public.teacher_teach_reg ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    220    219    220            �
           2604    16628    teacher_teachermodel id    DEFAULT     �   ALTER TABLE ONLY public.teacher_teachermodel ALTER COLUMN id SET DEFAULT nextval('public.teacher_teachermodel_id_seq'::regclass);
 F   ALTER TABLE public.teacher_teachermodel ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    227    228    228            �
           2604    16609    teacher_upload_material id    DEFAULT     �   ALTER TABLE ONLY public.teacher_upload_material ALTER COLUMN id SET DEFAULT nextval('public.teacher_upload_material_id_seq'::regclass);
 I   ALTER TABLE public.teacher_upload_material ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    223    224    224            �          0    16425 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    203   ��       �          0    16435    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    205   ��       �          0    16417    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    201   ��       �          0    16443 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    207   ��       �          0    16453    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    209   ��       �          0    16461    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    211   ��       �          0    16521    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    213   �       �          0    16407    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    199   +�       �          0    16396    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    197   ��       �          0    16549    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    214   �       �          0    16642    pageadmin_ad_staff 
   TABLE DATA               e   COPY public.pageadmin_ad_staff (id, staffname, stream, date, school, gender, experience) FROM stdin;
    public       postgres    false    230   ��       �          0    16573    student_feedbackmodel 
   TABLE DATA               J   COPY public.student_feedbackmodel (id, feedback, username_id) FROM stdin;
    public       postgres    false    218   ��       �          0    16561    student_registeration 
   TABLE DATA               g   COPY public.student_registeration (id, fname, lname, "user", password, email, num, gender) FROM stdin;
    public       postgres    false    216   �       �          0    16614    teacher_ad_student 
   TABLE DATA               Z   COPY public.teacher_ad_student (id, studentname, clas, date, rno, gender, ad) FROM stdin;
    public       postgres    false    226   m�       �          0    16598    teacher_notificationmodel 
   TABLE DATA               E   COPY public.teacher_notificationmodel (id, date, notify) FROM stdin;
    public       postgres    false    222   ��       �          0    16587    teacher_teach_reg 
   TABLE DATA               ]   COPY public.teacher_teach_reg (id, username, password, email, num, gender, file) FROM stdin;
    public       postgres    false    220   ��       �          0    16625    teacher_teachermodel 
   TABLE DATA               \   COPY public.teacher_teachermodel (id, feedback, day, date, reason, username_id) FROM stdin;
    public       postgres    false    228   ��       �          0    16606    teacher_upload_material 
   TABLE DATA               P   COPY public.teacher_upload_material (id, name, upload, description) FROM stdin;
    public       postgres    false    224   ��       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       postgres    false    202            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       postgres    false    204            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 42, true);
            public       postgres    false    200            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public       postgres    false    208            �           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);
            public       postgres    false    206                        0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    210                       0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
            public       postgres    false    212                       0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);
            public       postgres    false    198                       0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 22, true);
            public       postgres    false    196                       0    0    pageadmin_ad_staff_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.pageadmin_ad_staff_id_seq', 1, false);
            public       postgres    false    229                       0    0    student_feedbackmodel_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.student_feedbackmodel_id_seq', 1, false);
            public       postgres    false    217                       0    0    student_registeration_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.student_registeration_id_seq', 1, true);
            public       postgres    false    215                       0    0     teacher_notificationmodel_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.teacher_notificationmodel_id_seq', 1, false);
            public       postgres    false    221                       0    0    teacher_student_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.teacher_student_id_seq', 1, false);
            public       postgres    false    225            	           0    0    teacher_teach_reg_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.teacher_teach_reg_id_seq', 1, true);
            public       postgres    false    219            
           0    0    teacher_teachermodel_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.teacher_teachermodel_id_seq', 1, false);
            public       postgres    false    227                       0    0    teacher_upload_material_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.teacher_upload_material_id_seq', 1, false);
            public       postgres    false    223            	           2606    16432    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    203                       2606    16487 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    205    205                       2606    16440 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    205                       2606    16430    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    203                       2606    16473 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    201    201                       2606    16422 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    201                       2606    16458 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    209                       2606    16502 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         postgres    false    209    209                       2606    16448    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    207                       2606    16466 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    211            "           2606    16516 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         postgres    false    211    211                       2606    16544     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    207            %           2606    16530 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    213            �
           2606    16414 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    199    199                       2606    16412 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    199            �
           2606    16404 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    197            )           2606    16556 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    214            <           2606    16650 *   pageadmin_ad_staff pageadmin_ad_staff_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.pageadmin_ad_staff
    ADD CONSTRAINT pageadmin_ad_staff_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.pageadmin_ad_staff DROP CONSTRAINT pageadmin_ad_staff_pkey;
       public         postgres    false    230            .           2606    16578 0   student_feedbackmodel student_feedbackmodel_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.student_feedbackmodel
    ADD CONSTRAINT student_feedbackmodel_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.student_feedbackmodel DROP CONSTRAINT student_feedbackmodel_pkey;
       public         postgres    false    218            ,           2606    16569 0   student_registeration student_registeration_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.student_registeration
    ADD CONSTRAINT student_registeration_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.student_registeration DROP CONSTRAINT student_registeration_pkey;
       public         postgres    false    216            3           2606    16603 8   teacher_notificationmodel teacher_notificationmodel_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.teacher_notificationmodel
    ADD CONSTRAINT teacher_notificationmodel_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.teacher_notificationmodel DROP CONSTRAINT teacher_notificationmodel_pkey;
       public         postgres    false    222            7           2606    16622 '   teacher_ad_student teacher_student_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.teacher_ad_student
    ADD CONSTRAINT teacher_student_pkey PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.teacher_ad_student DROP CONSTRAINT teacher_student_pkey;
       public         postgres    false    226            1           2606    16595 (   teacher_teach_reg teacher_teach_reg_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.teacher_teach_reg
    ADD CONSTRAINT teacher_teach_reg_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.teacher_teach_reg DROP CONSTRAINT teacher_teach_reg_pkey;
       public         postgres    false    220            9           2606    16633 .   teacher_teachermodel teacher_teachermodel_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.teacher_teachermodel
    ADD CONSTRAINT teacher_teachermodel_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.teacher_teachermodel DROP CONSTRAINT teacher_teachermodel_pkey;
       public         postgres    false    228            5           2606    16611 4   teacher_upload_material teacher_upload_material_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.teacher_upload_material
    ADD CONSTRAINT teacher_upload_material_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.teacher_upload_material DROP CONSTRAINT teacher_upload_material_pkey;
       public         postgres    false    224                       1259    16475    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    203                       1259    16488 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    205                       1259    16489 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    205                       1259    16474 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    201                       1259    16504 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         postgres    false    209                       1259    16503 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         postgres    false    209                       1259    16518 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         postgres    false    211                        1259    16517 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         postgres    false    211                       1259    16545     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    207            #           1259    16541 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    213            &           1259    16542 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    213            '           1259    16558 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    214            *           1259    16557 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    214            /           1259    16584 *   student_feedbackmodel_username_id_01998b32    INDEX     s   CREATE INDEX student_feedbackmodel_username_id_01998b32 ON public.student_feedbackmodel USING btree (username_id);
 >   DROP INDEX public.student_feedbackmodel_username_id_01998b32;
       public         postgres    false    218            :           1259    16639 )   teacher_teachermodel_username_id_8a60752c    INDEX     q   CREATE INDEX teacher_teachermodel_username_id_8a60752c ON public.teacher_teachermodel USING btree (username_id);
 =   DROP INDEX public.teacher_teachermodel_username_id_8a60752c;
       public         postgres    false    228            ?           2606    16481 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    201    2822    205            >           2606    16476 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    203    2827    205            =           2606    16467 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    2817    201    199            A           2606    16496 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    203    209    2827            @           2606    16491 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    209    207    2835            C           2606    16510 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    2822    201    211            B           2606    16505 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    207    211    2835            D           2606    16531 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    199    2817    213            E           2606    16536 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       postgres    false    2835    207    213            F           2606    16579 L   student_feedbackmodel student_feedbackmode_username_id_01998b32_fk_student_r    FK CONSTRAINT     �   ALTER TABLE ONLY public.student_feedbackmodel
    ADD CONSTRAINT student_feedbackmode_username_id_01998b32_fk_student_r FOREIGN KEY (username_id) REFERENCES public.student_registeration(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.student_feedbackmodel DROP CONSTRAINT student_feedbackmode_username_id_01998b32_fk_student_r;
       public       postgres    false    2860    216    218            G           2606    16634 K   teacher_teachermodel teacher_teachermodel_username_id_8a60752c_fk_teacher_t    FK CONSTRAINT     �   ALTER TABLE ONLY public.teacher_teachermodel
    ADD CONSTRAINT teacher_teachermodel_username_id_8a60752c_fk_teacher_t FOREIGN KEY (username_id) REFERENCES public.teacher_teach_reg(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.teacher_teachermodel DROP CONSTRAINT teacher_teachermodel_username_id_8a60752c_fk_teacher_t;
       public       postgres    false    228    2865    220            �      x������ � �      �      x������ � �      �   �  x�m�A�� E�p
O0�D]�5�*�(I�I�R��������}��Z�o9d���x�Ԡ�̬�fm�<�H���]E�+��`��JǠ+�����_�����r�
���H��^�:b��ʻ���=���o^��Mv�h�i#����ދ�Yi�_?�x>�����x�t��v��g�?�bgkB���E�^	L�F넧�I�}�!h�E�C���7`d������/Z�R�deM��Oh�� ���J(L"�}��Rݯl���hPV�L[��x^`���B%�C�4�*ќ}*�d�XC���k�_0r��
3 J����zu�[�(�k��w(q�a��k/.N�XLA�"<��9����������Lʼ���h{ͩ.��푧�0+My��μ?&ܰ^D�2F)�Ѽ�i
�t�(5o�-µ2�յ���,��zyI��a(�k�I�S�y�1Q���5/Ů%�aC,���A$6c%�8��Fv�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�U��� ��ۇ1�Ϳw1Y*tq�bo/]���wzz
�,���GvWl��L8.6%������]r�'��I��8�x�ě;}�@�l�Dm�$o~���l���7<��IOk��q�΋��nT�R�������KEjv��O��?�<�� ���c�}���i       �     x����n�0��٧�}4��Y*Y��l�ހ����قC7�TB����3g�C�s��Sz��� bCRpm����#���R+��?�
'�ܔ��DX+�����V��B��5*�,*��B��K�xx���⫷9�h]��b(PQ�_���l�y�����4.A��&J�h]��`�~��8����so���%��KS��^h���B�Ƽ�΅��0�&�
�mA�r*^ӸOAA`u\
�RZ7�� !g8���c\RN���)��[���pH��%�W׆ƥ8�s���8�Ώ���o2��U!~���5��t���|��j����"�o�bb�E�Uc��lǱPP��ϷB�O�7���w����k����ZTɻ��?VF����Nnuh���S8��S��l�k]��ˎ�#����
�j��v�j+D3g��� Xz�譐��
�Hp�AaR�C�n��/&"5Te@�!���@�U��(�;�A�� ���:��5w��">�6\d������t:} vi��      �   �   x���;��0 К���g�G�@ i�%��$ �2 @��K�W�ū����B���Yq�m:_�S���z�d��wˎ�`d��c�ҩ/�m�)c��&�1qWؕo�U�F�����+&�����C@1=�� $�BI-h *!\�*��\T�h��ބ�HG��q�BE���F�E,�����A�Q�      �      x������ � �      �      x������ � �      �   Q   x�3��JM-K�K�+�H��N�.��,K��,NL�����2426153���s3s���s9-,��LM��9ssR�b���� ��      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     