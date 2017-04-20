.class public abstract Lcom/yf/gattlib/client/b/aw;
.super Lcom/yf/gattlib/client/b/e;
.source "ProGuard"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/yf/gattlib/client/b/aw;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/client/b/aw;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/e;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput v0, p0, Lcom/yf/gattlib/client/b/aw;->b:I

    .line 12
    const/4 v0, 0x2

    iput v0, p0, Lcom/yf/gattlib/client/b/aw;->c:I

    .line 13
    const/4 v0, 0x3

    iput v0, p0, Lcom/yf/gattlib/client/b/aw;->d:I

    return-void
.end method


# virtual methods
.method public varargs a([B[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 18
    invoke-static {p1}, Lcom/yf/gattlib/p/n;->b([B)Z

    .line 19
    iget v0, p0, Lcom/yf/gattlib/client/b/aw;->e:I

    packed-switch v0, :pswitch_data_0

    .line 34
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/aw;->i()V

    .line 39
    :goto_0
    return-void

    .line 21
    :pswitch_0
    sget-object v0, Lcom/yf/gattlib/client/b/aw;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STATE_SENDING_START: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/aw;->q()[B

    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/aw;->a([B)V

    .line 24
    const/4 v0, 0x2

    iput v0, p0, Lcom/yf/gattlib/client/b/aw;->e:I

    goto :goto_0

    .line 27
    :pswitch_1
    sget-object v0, Lcom/yf/gattlib/client/b/aw;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STATE_SENDING_NAME: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/aw;->i()V

    goto :goto_0

    .line 38
    :pswitch_2
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/aw;->i()V

    goto :goto_0

    .line 19
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b()V
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/aw;->c()[B

    move-result-object v0

    .line 44
    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/yf/gattlib/e/b;

    const-string v1, "syncValue is empty"

    invoke-direct {v0, v1}, Lcom/yf/gattlib/e/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/yf/gattlib/client/b/aw;->e:I

    .line 49
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/aw;->a([B)V

    .line 50
    return-void
.end method

.method protected abstract c()[B
.end method

.method protected abstract q()[B
.end method
