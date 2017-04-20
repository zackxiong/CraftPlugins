.class public Lcom/yf/smart/weloopx/app/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/yf/smart/weloopx/app/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/yf/smart/weloopx/app/a;->a:Ljava/util/Stack;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static a()Lcom/yf/smart/weloopx/app/a;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/yf/smart/weloopx/app/a;->b:Lcom/yf/smart/weloopx/app/a;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/yf/smart/weloopx/app/a;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/app/a;-><init>()V

    sput-object v0, Lcom/yf/smart/weloopx/app/a;->b:Lcom/yf/smart/weloopx/app/a;

    .line 25
    :cond_0
    sget-object v0, Lcom/yf/smart/weloopx/app/a;->b:Lcom/yf/smart/weloopx/app/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/yf/smart/weloopx/app/a;->a:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 76
    const/4 v0, 0x0

    sget-object v1, Lcom/yf/smart/weloopx/app/a;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 77
    sget-object v0, Lcom/yf/smart/weloopx/app/a;->a:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/yf/smart/weloopx/app/a;->a:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 76
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 81
    :cond_1
    sget-object v0, Lcom/yf/smart/weloopx/app/a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 82
    return-void
.end method
