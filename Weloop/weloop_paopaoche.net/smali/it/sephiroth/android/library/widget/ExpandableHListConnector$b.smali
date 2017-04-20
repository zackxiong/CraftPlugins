.class public Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/widget/ExpandableHListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field private static d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lit/sephiroth/android/library/widget/k;

.field public b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 950
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 984
    return-void
.end method

.method static a(IIIILit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;
    .locals 2

    .prologue
    .line 988
    invoke-static {}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    move-result-object v0

    .line 989
    invoke-static {p1, p2, p3, p0}, Lit/sephiroth/android/library/widget/k;->a(IIII)Lit/sephiroth/android/library/widget/k;

    move-result-object v1

    iput-object v1, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/k;

    .line 990
    iput-object p4, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    .line 991
    iput p5, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->c:I

    .line 992
    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 972
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/k;

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/k;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/k;->b()V

    .line 974
    iput-object v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/k;

    .line 976
    :cond_0
    iput-object v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    .line 977
    const/4 v0, 0x0

    iput v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->c:I

    .line 978
    return-void
.end method

.method private static d()Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;
    .locals 3

    .prologue
    .line 997
    sget-object v1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d:Ljava/util/ArrayList;

    monitor-enter v1

    .line 998
    :try_start_0
    sget-object v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 999
    sget-object v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    .line 1004
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1005
    invoke-direct {v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->c()V

    .line 1006
    :goto_0
    return-object v0

    .line 1002
    :cond_0
    :try_start_1
    new-instance v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    invoke-direct {v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;-><init>()V

    monitor-exit v1

    goto :goto_0

    .line 1004
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 1010
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->c()V

    .line 1011
    sget-object v1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1012
    :try_start_0
    sget-object v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 1013
    sget-object v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1015
    :cond_0
    monitor-exit v1

    .line 1016
    return-void

    .line 1015
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
