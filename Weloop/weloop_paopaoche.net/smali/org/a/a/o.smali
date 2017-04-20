.class public Lorg/a/a/o;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final l:Lorg/a/a/o;

.field public static final m:Lorg/a/a/o;

.field public static final n:Lorg/a/a/o;

.field public static final o:Lorg/a/a/o;

.field public static final p:Lorg/a/a/o;


# instance fields
.field transient i:I

.field transient j:Ljava/lang/String;

.field transient k:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 44
    new-instance v0, Lorg/a/a/i;

    const v1, 0xc350

    const-string v2, "FATAL"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/a/a/i;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/a/a/o;->l:Lorg/a/a/o;

    .line 49
    new-instance v0, Lorg/a/a/i;

    const v1, 0x9c40

    const-string v2, "ERROR"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lorg/a/a/i;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/a/a/o;->m:Lorg/a/a/o;

    .line 54
    new-instance v0, Lorg/a/a/i;

    const/16 v1, 0x7530

    const-string v2, "WARN"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lorg/a/a/i;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/a/a/o;->n:Lorg/a/a/o;

    .line 59
    new-instance v0, Lorg/a/a/i;

    const/16 v1, 0x4e20

    const-string v2, "INFO"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lorg/a/a/i;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/a/a/o;->o:Lorg/a/a/o;

    .line 64
    new-instance v0, Lorg/a/a/i;

    const/16 v1, 0x2710

    const-string v2, "DEBUG"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lorg/a/a/i;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/a/a/o;->p:Lorg/a/a/o;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/16 v0, 0x2710

    iput v0, p0, Lorg/a/a/o;->i:I

    .line 72
    const-string v0, "DEBUG"

    iput-object v0, p0, Lorg/a/a/o;->j:Ljava/lang/String;

    .line 73
    const/4 v0, 0x7

    iput v0, p0, Lorg/a/a/o;->k:I

    .line 74
    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lorg/a/a/o;->i:I

    .line 82
    iput-object p2, p0, Lorg/a/a/o;->j:Ljava/lang/String;

    .line 83
    iput p3, p0, Lorg/a/a/o;->k:I

    .line 84
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lorg/a/a/o;->i:I

    return v0
.end method

.method public a(Lorg/a/a/o;)Z
    .locals 2

    .prologue
    .line 122
    iget v0, p0, Lorg/a/a/o;->i:I

    iget v1, p1, Lorg/a/a/o;->i:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 92
    instance-of v1, p1, Lorg/a/a/o;

    if-eqz v1, :cond_0

    .line 93
    check-cast p1, Lorg/a/a/o;

    .line 94
    iget v1, p0, Lorg/a/a/o;->i:I

    iget v2, p1, Lorg/a/a/o;->i:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 96
    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/a/a/o;->j:Ljava/lang/String;

    return-object v0
.end method
