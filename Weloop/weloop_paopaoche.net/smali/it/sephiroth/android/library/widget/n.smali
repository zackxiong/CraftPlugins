.class public Lit/sephiroth/android/library/widget/n;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/WrapperListAdapter;


# static fields
.field static final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lit/sephiroth/android/library/widget/m$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lit/sephiroth/android/library/widget/m$b;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lit/sephiroth/android/library/widget/m$b;",
            ">;"
        }
    .end annotation
.end field

.field d:Z

.field private final e:Landroid/widget/ListAdapter;

.field private final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lit/sephiroth/android/library/widget/n;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lit/sephiroth/android/library/widget/m$b;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lit/sephiroth/android/library/widget/m$b;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p3, p0, Lit/sephiroth/android/library/widget/n;->e:Landroid/widget/ListAdapter;

    .line 61
    instance-of v0, p3, Landroid/widget/Filterable;

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/n;->f:Z

    .line 63
    if-nez p1, :cond_0

    .line 64
    sget-object v0, Lit/sephiroth/android/library/widget/n;->c:Ljava/util/ArrayList;

    iput-object v0, p0, Lit/sephiroth/android/library/widget/n;->a:Ljava/util/ArrayList;

    .line 69
    :goto_0
    if-nez p2, :cond_1

    .line 70
    sget-object v0, Lit/sephiroth/android/library/widget/n;->c:Ljava/util/ArrayList;

    iput-object v0, p0, Lit/sephiroth/android/library/widget/n;->b:Ljava/util/ArrayList;

    .line 75
    :goto_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/n;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->b:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/n;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/n;->d:Z

    .line 78
    return-void

    .line 66
    :cond_0
    iput-object p1, p0, Lit/sephiroth/android/library/widget/n;->a:Ljava/util/ArrayList;

    goto :goto_0

    .line 72
    :cond_1
    iput-object p2, p0, Lit/sephiroth/android/library/widget/n;->b:Ljava/util/ArrayList;

    goto :goto_1

    .line 75
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private a(Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lit/sephiroth/android/library/widget/m$b;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 93
    if-eqz p1, :cond_1

    .line 94
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/m$b;

    .line 95
    iget-boolean v0, v0, Lit/sephiroth/android/library/widget/m$b;->c:Z

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 100
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 146
    iget-object v1, p0, Lit/sephiroth/android/library/widget/n;->e:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 147
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/n;->d:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lit/sephiroth/android/library/widget/n;->e:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 147
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->e:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/n;->b()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/n;->a()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lit/sephiroth/android/library/widget/n;->e:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 141
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/n;->b()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/n;->a()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/n;->f:Z

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->e:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 271
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 176
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/n;->a()I

    move-result v0

    .line 177
    if-ge p1, v0, :cond_0

    .line 178
    iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/m$b;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/m$b;->b:Ljava/lang/Object;

    .line 192
    :goto_0
    return-object v0

    .line 182
    :cond_0
    sub-int v1, p1, v0

    .line 183
    const/4 v0, 0x0

    .line 184
    iget-object v2, p0, Lit/sephiroth/android/library/widget/n;->e:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_1

    .line 185
    iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 186
    if-ge v1, v0, :cond_1

    .line 187
    iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 192
    :cond_1
    iget-object v2, p0, Lit/sephiroth/android/library/widget/n;->b:Ljava/util/ArrayList;

    sub-int v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/m$b;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/m$b;->b:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/n;->a()I

    move-result v0

    .line 197
    iget-object v1, p0, Lit/sephiroth/android/library/widget/n;->e:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    if-lt p1, v0, :cond_0

    .line 198
    sub-int v0, p1, v0

    .line 199
    iget-object v1, p0, Lit/sephiroth/android/library/widget/n;->e:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 200
    if-ge v0, v1, :cond_0

    .line 201
    iget-object v1, p0, Lit/sephiroth/android/library/widget/n;->e:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 204
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/n;->a()I

    move-result v0

    .line 237
    iget-object v1, p0, Lit/sephiroth/android/library/widget/n;->e:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    if-lt p1, v0, :cond_0

    .line 238
    sub-int v0, p1, v0

    .line 239
    iget-object v1, p0, Lit/sephiroth/android/library/widget/n;->e:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 240
    if-ge v0, v1, :cond_0

    .line 241
    iget-object v1, p0, Lit/sephiroth/android/library/widget/n;->e:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 245
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 216
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/n;->a()I

    move-result v0

    .line 217
    if-ge p1, v0, :cond_0

    .line 218
    iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/m$b;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/m$b;->a:Landroid/view/View;

    .line 232
    :goto_0
    return-object v0

    .line 222
    :cond_0
    sub-int v1, p1, v0

    .line 223
    const/4 v0, 0x0

    .line 224
    iget-object v2, p0, Lit/sephiroth/android/library/widget/n;->e:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_1

    .line 225
    iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 226
    if-ge v1, v0, :cond_1

    .line 227
    iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 232
    :cond_1
    iget-object v2, p0, Lit/sephiroth/android/library/widget/n;->b:Ljava/util/ArrayList;

    sub-int v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/m$b;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/m$b;->a:Landroid/view/View;

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->e:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    .line 252
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->e:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->e:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    .line 211
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->e:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 3

    .prologue
    .line 155
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/n;->a()I

    move-result v0

    .line 156
    if-ge p1, v0, :cond_0

    .line 157
    iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/m$b;

    iget-boolean v0, v0, Lit/sephiroth/android/library/widget/m$b;->c:Z

    .line 171
    :goto_0
    return v0

    .line 161
    :cond_0
    sub-int v1, p1, v0

    .line 162
    const/4 v0, 0x0

    .line 163
    iget-object v2, p0, Lit/sephiroth/android/library/widget/n;->e:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_1

    .line 164
    iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 165
    if-ge v1, v0, :cond_1

    .line 166
    iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0

    .line 171
    :cond_1
    iget-object v2, p0, Lit/sephiroth/android/library/widget/n;->b:Ljava/util/ArrayList;

    sub-int v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/m$b;

    iget-boolean v0, v0, Lit/sephiroth/android/library/widget/m$b;->c:Z

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->e:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 259
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->e:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 265
    :cond_0
    return-void
.end method
