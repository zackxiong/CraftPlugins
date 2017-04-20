.class public Lcom/yf/smart/weloopx/event/SyncDataProgressEvent;
.super Lcom/yf/lib/b/a;
.source "ProGuard"


# instance fields
.field public final curStep:I

.field public final sumSteps:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/yf/lib/b/a;-><init>()V

    .line 13
    iput p1, p0, Lcom/yf/smart/weloopx/event/SyncDataProgressEvent;->sumSteps:I

    .line 14
    iput p2, p0, Lcom/yf/smart/weloopx/event/SyncDataProgressEvent;->curStep:I

    .line 15
    return-void
.end method
