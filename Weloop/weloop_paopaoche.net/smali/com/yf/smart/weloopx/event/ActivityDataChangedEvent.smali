.class public Lcom/yf/smart/weloopx/event/ActivityDataChangedEvent;
.super Lcom/yf/lib/b/a;
.source "ProGuard"


# instance fields
.field public activityId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/yf/lib/b/a;-><init>()V

    .line 13
    iput p1, p0, Lcom/yf/smart/weloopx/event/ActivityDataChangedEvent;->activityId:I

    .line 14
    return-void
.end method
