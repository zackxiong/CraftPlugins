.class public Lorg/acra/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lorg/acra/a/a;


# instance fields
.field private A:Ljava/lang/Integer;

.field private B:Ljava/lang/Integer;

.field private C:Ljava/lang/Integer;

.field private D:Ljava/lang/Integer;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/Integer;

.field private G:Ljava/lang/Boolean;

.field private H:Ljava/lang/Boolean;

.field private I:[Ljava/lang/String;

.field private J:[Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/Integer;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/Boolean;

.field private O:Lorg/acra/sender/HttpSender$Method;

.field private P:Lorg/acra/sender/HttpSender$Type;

.field private Q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private a:[Ljava/lang/String;

.field private b:[Ljava/lang/String;

.field private c:Ljava/lang/Integer;

.field private d:[Lorg/acra/ReportField;

.field private e:Ljava/lang/Boolean;

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/lang/Integer;

.field private h:Ljava/lang/Boolean;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/Boolean;

.field private n:[Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/Integer;

.field private q:Lorg/acra/ReportingInteractionMode;

.field private r:Lorg/acra/a/a;

.field private s:Ljava/lang/Integer;

.field private t:Ljava/lang/Integer;

.field private u:Ljava/lang/Integer;

.field private v:Ljava/lang/Integer;

.field private w:Ljava/lang/Integer;

.field private x:Ljava/lang/Integer;

.field private y:Ljava/lang/Integer;

.field private z:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lorg/acra/a/a;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, Lorg/acra/b;->a:[Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lorg/acra/b;->b:[Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lorg/acra/b;->c:Ljava/lang/Integer;

    .line 61
    iput-object v0, p0, Lorg/acra/b;->d:[Lorg/acra/ReportField;

    .line 62
    iput-object v0, p0, Lorg/acra/b;->e:Ljava/lang/Boolean;

    .line 63
    iput-object v0, p0, Lorg/acra/b;->f:Ljava/lang/Boolean;

    .line 64
    iput-object v0, p0, Lorg/acra/b;->g:Ljava/lang/Integer;

    .line 65
    iput-object v0, p0, Lorg/acra/b;->h:Ljava/lang/Boolean;

    .line 66
    iput-object v0, p0, Lorg/acra/b;->i:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lorg/acra/b;->j:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lorg/acra/b;->k:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lorg/acra/b;->l:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lorg/acra/b;->m:Ljava/lang/Boolean;

    .line 72
    iput-object v0, p0, Lorg/acra/b;->n:[Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lorg/acra/b;->o:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lorg/acra/b;->p:Ljava/lang/Integer;

    .line 75
    iput-object v0, p0, Lorg/acra/b;->q:Lorg/acra/ReportingInteractionMode;

    .line 76
    iput-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    .line 78
    iput-object v0, p0, Lorg/acra/b;->s:Ljava/lang/Integer;

    .line 79
    iput-object v0, p0, Lorg/acra/b;->t:Ljava/lang/Integer;

    .line 80
    iput-object v0, p0, Lorg/acra/b;->u:Ljava/lang/Integer;

    .line 81
    iput-object v0, p0, Lorg/acra/b;->v:Ljava/lang/Integer;

    .line 82
    iput-object v0, p0, Lorg/acra/b;->w:Ljava/lang/Integer;

    .line 83
    iput-object v0, p0, Lorg/acra/b;->x:Ljava/lang/Integer;

    .line 84
    iput-object v0, p0, Lorg/acra/b;->y:Ljava/lang/Integer;

    .line 85
    iput-object v0, p0, Lorg/acra/b;->z:Ljava/lang/Integer;

    .line 86
    iput-object v0, p0, Lorg/acra/b;->A:Ljava/lang/Integer;

    .line 87
    iput-object v0, p0, Lorg/acra/b;->B:Ljava/lang/Integer;

    .line 88
    iput-object v0, p0, Lorg/acra/b;->C:Ljava/lang/Integer;

    .line 89
    iput-object v0, p0, Lorg/acra/b;->D:Ljava/lang/Integer;

    .line 90
    iput-object v0, p0, Lorg/acra/b;->E:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lorg/acra/b;->F:Ljava/lang/Integer;

    .line 92
    iput-object v0, p0, Lorg/acra/b;->G:Ljava/lang/Boolean;

    .line 93
    iput-object v0, p0, Lorg/acra/b;->H:Ljava/lang/Boolean;

    .line 95
    iput-object v0, p0, Lorg/acra/b;->I:[Ljava/lang/String;

    .line 96
    iput-object v0, p0, Lorg/acra/b;->J:[Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lorg/acra/b;->K:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lorg/acra/b;->L:Ljava/lang/Integer;

    .line 100
    iput-object v0, p0, Lorg/acra/b;->M:Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lorg/acra/b;->N:Ljava/lang/Boolean;

    .line 103
    iput-object v0, p0, Lorg/acra/b;->O:Lorg/acra/sender/HttpSender$Method;

    .line 104
    iput-object v0, p0, Lorg/acra/b;->P:Lorg/acra/sender/HttpSender$Type;

    .line 541
    iput-object p1, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    .line 542
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1091
    if-eqz p0, :cond_0

    const-string v0, "ACRA-NULL-STRING"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public A()I
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lorg/acra/b;->A:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lorg/acra/b;->A:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 888
    :goto_0
    return v0

    .line 884
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 885
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->A()I

    move-result v0

    goto :goto_0

    .line 888
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public B()I
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lorg/acra/b;->B:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lorg/acra/b;->B:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 901
    :goto_0
    return v0

    .line 897
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 898
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->B()I

    move-result v0

    goto :goto_0

    .line 901
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public C()I
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lorg/acra/b;->C:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lorg/acra/b;->C:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 914
    :goto_0
    return v0

    .line 910
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 911
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->C()I

    move-result v0

    goto :goto_0

    .line 914
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public D()I
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lorg/acra/b;->D:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lorg/acra/b;->D:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 927
    :goto_0
    return v0

    .line 923
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 924
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->D()I

    move-result v0

    goto :goto_0

    .line 927
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lorg/acra/b;->E:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lorg/acra/b;->E:Ljava/lang/String;

    .line 940
    :goto_0
    return-object v0

    .line 936
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 937
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->E()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 940
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public F()I
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lorg/acra/b;->F:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Lorg/acra/b;->F:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 953
    :goto_0
    return v0

    .line 949
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 950
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->F()I

    move-result v0

    goto :goto_0

    .line 953
    :cond_1
    const/16 v0, 0x1388

    goto :goto_0
.end method

.method public G()Z
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lorg/acra/b;->G:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lorg/acra/b;->G:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 966
    :goto_0
    return v0

    .line 962
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 963
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->G()Z

    move-result v0

    goto :goto_0

    .line 966
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public H()Z
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lorg/acra/b;->H:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lorg/acra/b;->H:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 979
    :goto_0
    return v0

    .line 975
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 976
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->H()Z

    move-result v0

    goto :goto_0

    .line 979
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public I()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 984
    iget-object v0, p0, Lorg/acra/b;->I:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Lorg/acra/b;->I:[Ljava/lang/String;

    .line 994
    :goto_0
    return-object v0

    .line 988
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 989
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->I()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 992
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public J()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lorg/acra/b;->J:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lorg/acra/b;->J:[Ljava/lang/String;

    .line 1009
    :goto_0
    return-object v0

    .line 1003
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 1004
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->J()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1007
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public K()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1014
    iget-object v0, p0, Lorg/acra/b;->K:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lorg/acra/b;->K:Ljava/lang/String;

    .line 1022
    :goto_0
    return-object v0

    .line 1018
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 1019
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->K()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1022
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public L()I
    .locals 1

    .prologue
    .line 1027
    iget-object v0, p0, Lorg/acra/b;->L:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lorg/acra/b;->L:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1035
    :goto_0
    return v0

    .line 1031
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 1032
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->L()I

    move-result v0

    goto :goto_0

    .line 1035
    :cond_1
    const/16 v0, 0x64

    goto :goto_0
.end method

.method public M()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1040
    iget-object v0, p0, Lorg/acra/b;->M:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1041
    iget-object v0, p0, Lorg/acra/b;->M:Ljava/lang/String;

    .line 1048
    :goto_0
    return-object v0

    .line 1044
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 1045
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->M()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1048
    :cond_1
    const-string v0, "https://docs.google.com/spreadsheet/formResponse?formkey=%s&ifq"

    goto :goto_0
.end method

.method public N()Z
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Lorg/acra/b;->N:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Lorg/acra/b;->N:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1061
    :goto_0
    return v0

    .line 1057
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 1058
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->N()Z

    move-result v0

    goto :goto_0

    .line 1061
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public O()Lorg/acra/sender/HttpSender$Method;
    .locals 1

    .prologue
    .line 1066
    iget-object v0, p0, Lorg/acra/b;->O:Lorg/acra/sender/HttpSender$Method;

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lorg/acra/b;->O:Lorg/acra/sender/HttpSender$Method;

    .line 1074
    :goto_0
    return-object v0

    .line 1070
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 1071
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->O()Lorg/acra/sender/HttpSender$Method;

    move-result-object v0

    goto :goto_0

    .line 1074
    :cond_1
    sget-object v0, Lorg/acra/sender/HttpSender$Method;->POST:Lorg/acra/sender/HttpSender$Method;

    goto :goto_0
.end method

.method public P()Lorg/acra/sender/HttpSender$Type;
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Lorg/acra/b;->P:Lorg/acra/sender/HttpSender$Type;

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lorg/acra/b;->P:Lorg/acra/sender/HttpSender$Type;

    .line 1087
    :goto_0
    return-object v0

    .line 1083
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 1084
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->P()Lorg/acra/sender/HttpSender$Type;

    move-result-object v0

    goto :goto_0

    .line 1087
    :cond_1
    sget-object v0, Lorg/acra/sender/HttpSender$Type;->FORM:Lorg/acra/sender/HttpSender$Type;

    goto :goto_0
.end method

.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lorg/acra/b;->Q:Ljava/util/Map;

    return-object v0
.end method

.method public annotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 574
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->annotationType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public b()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lorg/acra/b;->a:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lorg/acra/b;->a:[Ljava/lang/String;

    .line 555
    :goto_0
    return-object v0

    .line 550
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 551
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->b()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 554
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public c()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lorg/acra/b;->b:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lorg/acra/b;->b:[Ljava/lang/String;

    .line 569
    :goto_0
    return-object v0

    .line 564
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 565
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->c()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 568
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lorg/acra/b;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lorg/acra/b;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 587
    :goto_0
    return v0

    .line 583
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 584
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->d()I

    move-result v0

    goto :goto_0

    .line 587
    :cond_1
    const/16 v0, 0xbb8

    goto :goto_0
.end method

.method public e()[Lorg/acra/ReportField;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lorg/acra/b;->d:[Lorg/acra/ReportField;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lorg/acra/b;->d:[Lorg/acra/ReportField;

    .line 601
    :goto_0
    return-object v0

    .line 596
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 597
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->e()[Lorg/acra/ReportField;

    move-result-object v0

    goto :goto_0

    .line 600
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/acra/ReportField;

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lorg/acra/b;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lorg/acra/b;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 614
    :goto_0
    return v0

    .line 610
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 611
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->f()Z

    move-result v0

    goto :goto_0

    .line 614
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lorg/acra/b;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lorg/acra/b;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 627
    :goto_0
    return v0

    .line 623
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 624
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->g()Z

    move-result v0

    goto :goto_0

    .line 627
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lorg/acra/b;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lorg/acra/b;->g:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 640
    :goto_0
    return v0

    .line 636
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 637
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->h()I

    move-result v0

    goto :goto_0

    .line 640
    :cond_1
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lorg/acra/b;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lorg/acra/b;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 653
    :goto_0
    return v0

    .line 649
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 650
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->i()Z

    move-result v0

    goto :goto_0

    .line 653
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lorg/acra/b;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lorg/acra/b;->i:Ljava/lang/String;

    .line 666
    :goto_0
    return-object v0

    .line 662
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 663
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 666
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lorg/acra/b;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lorg/acra/b;->j:Ljava/lang/String;

    .line 679
    :goto_0
    return-object v0

    .line 675
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 676
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 679
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lorg/acra/b;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lorg/acra/b;->k:Ljava/lang/String;

    .line 692
    :goto_0
    return-object v0

    .line 688
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 689
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->l()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 692
    :cond_1
    const-string v0, "ACRA-NULL-STRING"

    goto :goto_0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lorg/acra/b;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lorg/acra/b;->l:Ljava/lang/String;

    .line 705
    :goto_0
    return-object v0

    .line 701
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 702
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->m()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 705
    :cond_1
    const-string v0, "ACRA-NULL-STRING"

    goto :goto_0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lorg/acra/b;->m:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lorg/acra/b;->m:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 718
    :goto_0
    return v0

    .line 714
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 715
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->n()Z

    move-result v0

    goto :goto_0

    .line 718
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 723
    iget-object v0, p0, Lorg/acra/b;->n:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lorg/acra/b;->n:[Ljava/lang/String;

    .line 732
    :goto_0
    return-object v0

    .line 727
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 728
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->o()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 731
    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-t"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "-v"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "time"

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lorg/acra/b;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lorg/acra/b;->o:Ljava/lang/String;

    .line 745
    :goto_0
    return-object v0

    .line 741
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 742
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->p()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 745
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lorg/acra/b;->p:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lorg/acra/b;->p:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 758
    :goto_0
    return v0

    .line 754
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 755
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->q()I

    move-result v0

    goto :goto_0

    .line 758
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public r()Lorg/acra/ReportingInteractionMode;
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lorg/acra/b;->q:Lorg/acra/ReportingInteractionMode;

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lorg/acra/b;->q:Lorg/acra/ReportingInteractionMode;

    .line 771
    :goto_0
    return-object v0

    .line 767
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 768
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->r()Lorg/acra/ReportingInteractionMode;

    move-result-object v0

    goto :goto_0

    .line 771
    :cond_1
    sget-object v0, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    goto :goto_0
.end method

.method public s()I
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lorg/acra/b;->s:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lorg/acra/b;->s:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 784
    :goto_0
    return v0

    .line 780
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 781
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->s()I

    move-result v0

    goto :goto_0

    .line 784
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()I
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lorg/acra/b;->t:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lorg/acra/b;->t:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 797
    :goto_0
    return v0

    .line 793
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 794
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->t()I

    move-result v0

    goto :goto_0

    .line 797
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()I
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lorg/acra/b;->u:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lorg/acra/b;->u:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 810
    :goto_0
    return v0

    .line 806
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 807
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->u()I

    move-result v0

    goto :goto_0

    .line 810
    :cond_1
    const v0, 0x1080027

    goto :goto_0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lorg/acra/b;->v:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lorg/acra/b;->v:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 823
    :goto_0
    return v0

    .line 819
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 820
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->v()I

    move-result v0

    goto :goto_0

    .line 823
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public w()I
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lorg/acra/b;->w:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lorg/acra/b;->w:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 836
    :goto_0
    return v0

    .line 832
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 833
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->w()I

    move-result v0

    goto :goto_0

    .line 836
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public x()I
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lorg/acra/b;->x:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lorg/acra/b;->x:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 849
    :goto_0
    return v0

    .line 845
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 846
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->x()I

    move-result v0

    goto :goto_0

    .line 849
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public y()I
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lorg/acra/b;->y:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lorg/acra/b;->y:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 862
    :goto_0
    return v0

    .line 858
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 859
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->y()I

    move-result v0

    goto :goto_0

    .line 862
    :cond_1
    const v0, 0x1080078

    goto :goto_0
.end method

.method public z()I
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lorg/acra/b;->z:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lorg/acra/b;->z:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 875
    :goto_0
    return v0

    .line 871
    :cond_0
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    if-eqz v0, :cond_1

    .line 872
    iget-object v0, p0, Lorg/acra/b;->r:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->z()I

    move-result v0

    goto :goto_0

    .line 875
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
