.class public Lcom/yf/gattlib/http/afinal/db/sqlite/OneToManyLazyLoader;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        "M:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field db:Lcom/yf/gattlib/http/afinal/FinalDb;

.field entities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TM;>;"
        }
    .end annotation
.end field

.field listItemClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TM;>;"
        }
    .end annotation
.end field

.field ownerClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TO;>;"
        }
    .end annotation
.end field

.field ownerEntity:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Lcom/yf/gattlib/http/afinal/FinalDb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;",
            "Ljava/lang/Class",
            "<TO;>;",
            "Ljava/lang/Class",
            "<TM;>;",
            "Lcom/yf/gattlib/http/afinal/FinalDb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/yf/gattlib/http/afinal/db/sqlite/OneToManyLazyLoader;->ownerEntity:Ljava/lang/Object;

    .line 23
    iput-object p2, p0, Lcom/yf/gattlib/http/afinal/db/sqlite/OneToManyLazyLoader;->ownerClazz:Ljava/lang/Class;

    .line 24
    iput-object p3, p0, Lcom/yf/gattlib/http/afinal/db/sqlite/OneToManyLazyLoader;->listItemClazz:Ljava/lang/Class;

    .line 25
    iput-object p4, p0, Lcom/yf/gattlib/http/afinal/db/sqlite/OneToManyLazyLoader;->db:Lcom/yf/gattlib/http/afinal/FinalDb;

    .line 26
    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TM;>;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/db/sqlite/OneToManyLazyLoader;->entities:Ljava/util/List;

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/db/sqlite/OneToManyLazyLoader;->db:Lcom/yf/gattlib/http/afinal/FinalDb;

    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/db/sqlite/OneToManyLazyLoader;->ownerEntity:Ljava/lang/Object;

    iget-object v2, p0, Lcom/yf/gattlib/http/afinal/db/sqlite/OneToManyLazyLoader;->ownerClazz:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/yf/gattlib/http/afinal/db/sqlite/OneToManyLazyLoader;->listItemClazz:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/yf/gattlib/http/afinal/FinalDb;->loadOneToMany(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/db/sqlite/OneToManyLazyLoader;->entities:Ljava/util/List;

    if-nez v0, :cond_1

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/db/sqlite/OneToManyLazyLoader;->entities:Ljava/util/List;

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/db/sqlite/OneToManyLazyLoader;->entities:Ljava/util/List;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TM;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    iput-object p1, p0, Lcom/yf/gattlib/http/afinal/db/sqlite/OneToManyLazyLoader;->entities:Ljava/util/List;

    .line 44
    return-void
.end method
