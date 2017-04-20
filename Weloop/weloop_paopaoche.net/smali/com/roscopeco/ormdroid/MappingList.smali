.class Lcom/roscopeco/ormdroid/MappingList;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final mappings:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/roscopeco/ormdroid/TypeMapping;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/roscopeco/ormdroid/MappingList;->mappings:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method addMapping(Lcom/roscopeco/ormdroid/TypeMapping;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/roscopeco/ormdroid/MappingList;->mappings:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method findMapping(Ljava/lang/Class;)Lcom/roscopeco/ormdroid/TypeMapping;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/roscopeco/ormdroid/TypeMapping;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/roscopeco/ormdroid/MappingList;->mappings:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roscopeco/ormdroid/TypeMapping;

    .line 45
    invoke-interface {v0}, Lcom/roscopeco/ormdroid/TypeMapping;->javaType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method removeMapping(Lcom/roscopeco/ormdroid/TypeMapping;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/roscopeco/ormdroid/MappingList;->mappings:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method
