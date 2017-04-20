.class Landroid/support/v4/d/f;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method static a(Landroid/support/v4/d/d;)Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v4/d/d",
            "<TT;>;)",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Landroid/support/v4/d/e;

    invoke-direct {v0, p0}, Landroid/support/v4/d/e;-><init>(Landroid/support/v4/d/d;)V

    return-object v0
.end method
