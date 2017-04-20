.class public Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2$b;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Z


# direct methods
.method public constructor <init>(IILjava/lang/Class;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2$b;->a:I

    .line 55
    iput p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2$b;->b:I

    .line 56
    iput-object p3, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2$b;->c:Ljava/lang/Class;

    .line 57
    iput-boolean p4, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2$b;->d:Z

    .line 58
    return-void
.end method
