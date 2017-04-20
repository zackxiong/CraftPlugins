.class public Landroid/widget/YFRemoteViews2$d;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFRemoteViews2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field final synthetic c:Landroid/widget/YFRemoteViews2;


# direct methods
.method constructor <init>(Landroid/widget/YFRemoteViews2;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TS;)V"
        }
    .end annotation

    .prologue
    .line 148
    iput-object p1, p0, Landroid/widget/YFRemoteViews2$d;->c:Landroid/widget/YFRemoteViews2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p2, p0, Landroid/widget/YFRemoteViews2$d;->a:Ljava/lang/Object;

    .line 150
    iput-object p3, p0, Landroid/widget/YFRemoteViews2$d;->b:Ljava/lang/Object;

    .line 151
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 155
    instance-of v0, p1, Landroid/widget/YFRemoteViews2$d;

    if-nez v0, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 160
    :goto_0
    return v0

    .line 158
    :cond_0
    check-cast p1, Landroid/widget/YFRemoteViews2$d;

    .line 160
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 165
    iget-object v0, p0, Landroid/widget/YFRemoteViews2$d;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Landroid/widget/YFRemoteViews2$d;->b:Ljava/lang/Object;

    if-nez v2, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/YFRemoteViews2$d;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/widget/YFRemoteViews2$d;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method
