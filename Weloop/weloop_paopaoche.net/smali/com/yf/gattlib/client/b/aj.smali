.class public Lcom/yf/gattlib/client/b/aj;
.super Lcom/yf/gattlib/client/b/e;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/client/b/aj$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field public a:Lcom/yf/gattlib/client/b/aj$a;

.field private c:I

.field private d:[B

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/yf/gattlib/client/b/aj;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/client/b/aj;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/yf/gattlib/client/b/aj$a;[BI)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/e;-><init>()V

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lcom/yf/gattlib/client/b/aj;->c:I

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/gattlib/client/b/aj;->e:I

    .line 29
    iput p3, p0, Lcom/yf/gattlib/client/b/aj;->e:I

    .line 30
    iput-object p1, p0, Lcom/yf/gattlib/client/b/aj;->a:Lcom/yf/gattlib/client/b/aj$a;

    .line 31
    iput-object p2, p0, Lcom/yf/gattlib/client/b/aj;->d:[B

    .line 32
    return-void
.end method


# virtual methods
.method public varargs a(III[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x2

    if-eq v0, p1, :cond_1

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yf/gattlib/client/b/e;->a(III[Ljava/lang/Object;)V

    .line 125
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 104
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 122
    :pswitch_1
    iget-object v0, p0, Lcom/yf/gattlib/client/b/aj;->a:Lcom/yf/gattlib/client/b/aj$a;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/yf/gattlib/client/b/aj;->a:Lcom/yf/gattlib/client/b/aj$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/aj$a;->d()V

    goto :goto_0

    .line 106
    :pswitch_2
    iget-object v0, p0, Lcom/yf/gattlib/client/b/aj;->a:Lcom/yf/gattlib/client/b/aj$a;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/yf/gattlib/client/b/aj;->a:Lcom/yf/gattlib/client/b/aj$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/aj$a;->d()V

    goto :goto_0

    .line 111
    :pswitch_3
    iget-object v0, p0, Lcom/yf/gattlib/client/b/aj;->a:Lcom/yf/gattlib/client/b/aj$a;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/yf/gattlib/client/b/aj;->a:Lcom/yf/gattlib/client/b/aj$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/aj$a;->b()V

    goto :goto_0

    .line 116
    :pswitch_4
    iget-object v0, p0, Lcom/yf/gattlib/client/b/aj;->a:Lcom/yf/gattlib/client/b/aj$a;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/yf/gattlib/client/b/aj;->a:Lcom/yf/gattlib/client/b/aj$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/aj$a;->d()V

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public varargs a([B[Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/16 v1, 0x9e

    const/4 v2, 0x3

    .line 38
    iget v0, p0, Lcom/yf/gattlib/client/b/aj;->c:I

    packed-switch v0, :pswitch_data_0

    .line 78
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/yf/gattlib/client/b/aj;->a:Lcom/yf/gattlib/client/b/aj$a;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/yf/gattlib/client/b/aj;->a:Lcom/yf/gattlib/client/b/aj$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/aj$a;->d()V

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/aj;->i()V

    .line 82
    :goto_1
    return-void

    .line 40
    :pswitch_1
    invoke-static {p1}, Lcom/yf/gattlib/client/j;->a([B)I

    move-result v0

    .line 41
    if-ne v0, v1, :cond_2

    .line 42
    iget-object v0, p0, Lcom/yf/gattlib/client/b/aj;->d:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yf/gattlib/client/b/aj;->d:[B

    array-length v0, v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    .line 43
    iget-object v0, p0, Lcom/yf/gattlib/client/b/aj;->d:[B

    invoke-static {v0}, Lcom/yf/gattlib/p/n;->a([B)V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " alarmData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/client/b/aj;->d:[B

    invoke-static {v1}, Lcom/yf/gattlib/p/c;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/yf/gattlib/client/b/aj;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/yf/gattlib/p/c;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/yf/gattlib/client/b/aj;->d:[B

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/aj;->a([B)V

    .line 52
    const/4 v0, 0x4

    iput v0, p0, Lcom/yf/gattlib/client/b/aj;->c:I

    goto :goto_1

    .line 56
    :cond_2
    iput v2, p0, Lcom/yf/gattlib/client/b/aj;->c:I

    goto :goto_0

    .line 60
    :pswitch_2
    invoke-static {p1}, Lcom/yf/gattlib/client/j;->a([B)I

    move-result v0

    .line 61
    if-ne v0, v1, :cond_4

    .line 62
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/client/b/aj;->b([B)[B

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yf/gattlib/client/b/aj;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/yf/gattlib/client/b/aj;->a:Lcom/yf/gattlib/client/b/aj$a;

    if-eqz v0, :cond_3

    .line 65
    iget-object v0, p0, Lcom/yf/gattlib/client/b/aj;->a:Lcom/yf/gattlib/client/b/aj$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/aj$a;->c()V

    .line 68
    :cond_3
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/aj;->i()V

    goto/16 :goto_1

    .line 71
    :cond_4
    iput v2, p0, Lcom/yf/gattlib/client/b/aj;->c:I

    goto/16 :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public b()V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yf/gattlib/client/b/aj;->a:Lcom/yf/gattlib/client/b/aj$a;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/yf/gattlib/client/b/aj;->a:Lcom/yf/gattlib/client/b/aj$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/aj$a;->a()V

    .line 89
    :cond_0
    const-string v0, "H2DR"

    const/16 v1, 0x9e

    const/16 v2, 0xf

    iget v3, p0, Lcom/yf/gattlib/client/b/aj;->e:I

    invoke-static {v0, v1, v2, v3}, Lcom/yf/gattlib/client/j;->a(Ljava/lang/String;III)[B

    move-result-object v0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/yf/gattlib/client/b/aj;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ObtainCommand = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", channel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yf/gattlib/client/b/aj;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/aj;->a([B)V

    .line 95
    const/4 v0, 0x1

    iput v0, p0, Lcom/yf/gattlib/client/b/aj;->c:I

    .line 96
    return-void
.end method
