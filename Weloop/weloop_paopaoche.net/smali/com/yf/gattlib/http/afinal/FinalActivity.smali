.class public abstract Lcom/yf/gattlib/http/afinal/FinalActivity;
.super Landroid/app/Activity;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/http/afinal/FinalActivity$1;,
        Lcom/yf/gattlib/http/afinal/FinalActivity$Method;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 131
    return-void
.end method

.method public static initInjectedView(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yf/gattlib/http/afinal/FinalActivity;->initInjectedView(Ljava/lang/Object;Landroid/view/View;)V

    .line 53
    return-void
.end method

.method public static initInjectedView(Ljava/lang/Object;Landroid/view/View;)V
    .locals 7

    .prologue
    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 58
    if-eqz v2, :cond_2

    array-length v0, v2

    if-lez v0, :cond_2

    .line 59
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 61
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 63
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 66
    :cond_1
    const-class v0, Lcom/yf/gattlib/http/afinal/annotation/view/ViewInject;

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/http/afinal/annotation/view/ViewInject;

    .line 67
    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0}, Lcom/yf/gattlib/http/afinal/annotation/view/ViewInject;->id()I

    move-result v5

    .line 70
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    invoke-interface {v0}, Lcom/yf/gattlib/http/afinal/annotation/view/ViewInject;->click()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/yf/gattlib/http/afinal/FinalActivity$Method;->Click:Lcom/yf/gattlib/http/afinal/FinalActivity$Method;

    invoke-static {p0, v4, v5, v6}, Lcom/yf/gattlib/http/afinal/FinalActivity;->setListener(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/yf/gattlib/http/afinal/FinalActivity$Method;)V

    .line 73
    invoke-interface {v0}, Lcom/yf/gattlib/http/afinal/annotation/view/ViewInject;->longClick()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/yf/gattlib/http/afinal/FinalActivity$Method;->LongClick:Lcom/yf/gattlib/http/afinal/FinalActivity$Method;

    invoke-static {p0, v4, v5, v6}, Lcom/yf/gattlib/http/afinal/FinalActivity;->setListener(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/yf/gattlib/http/afinal/FinalActivity$Method;)V

    .line 74
    invoke-interface {v0}, Lcom/yf/gattlib/http/afinal/annotation/view/ViewInject;->itemClick()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/yf/gattlib/http/afinal/FinalActivity$Method;->ItemClick:Lcom/yf/gattlib/http/afinal/FinalActivity$Method;

    invoke-static {p0, v4, v5, v6}, Lcom/yf/gattlib/http/afinal/FinalActivity;->setListener(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/yf/gattlib/http/afinal/FinalActivity$Method;)V

    .line 75
    invoke-interface {v0}, Lcom/yf/gattlib/http/afinal/annotation/view/ViewInject;->itemLongClick()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/yf/gattlib/http/afinal/FinalActivity$Method;->itemLongClick:Lcom/yf/gattlib/http/afinal/FinalActivity$Method;

    invoke-static {p0, v4, v5, v6}, Lcom/yf/gattlib/http/afinal/FinalActivity;->setListener(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/yf/gattlib/http/afinal/FinalActivity$Method;)V

    .line 77
    invoke-interface {v0}, Lcom/yf/gattlib/http/afinal/annotation/view/ViewInject;->select()Lcom/yf/gattlib/http/afinal/annotation/view/Select;

    move-result-object v0

    .line 78
    invoke-interface {v0}, Lcom/yf/gattlib/http/afinal/annotation/view/Select;->selected()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 79
    invoke-interface {v0}, Lcom/yf/gattlib/http/afinal/annotation/view/Select;->selected()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lcom/yf/gattlib/http/afinal/annotation/view/Select;->noSelected()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v4, v5, v0}, Lcom/yf/gattlib/http/afinal/FinalActivity;->setViewSelectListener(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 88
    :cond_2
    return-void
.end method

.method private static setListener(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/yf/gattlib/http/afinal/FinalActivity$Method;)V
    .locals 3

    .prologue
    .line 100
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    sget-object v1, Lcom/yf/gattlib/http/afinal/FinalActivity$1;->$SwitchMap$com$yf$gattlib$http$afinal$FinalActivity$Method:[I

    invoke-virtual {p3}, Lcom/yf/gattlib/http/afinal/FinalActivity$Method;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 107
    :pswitch_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 108
    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/yf/gattlib/http/afinal/annotation/view/EventListener;

    invoke-direct {v1, p0}, Lcom/yf/gattlib/http/afinal/annotation/view/EventListener;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Lcom/yf/gattlib/http/afinal/annotation/view/EventListener;->click(Ljava/lang/String;)Lcom/yf/gattlib/http/afinal/annotation/view/EventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 112
    :pswitch_1
    instance-of v1, v0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_0

    .line 113
    check-cast v0, Landroid/widget/AbsListView;

    new-instance v1, Lcom/yf/gattlib/http/afinal/annotation/view/EventListener;

    invoke-direct {v1, p0}, Lcom/yf/gattlib/http/afinal/annotation/view/EventListener;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Lcom/yf/gattlib/http/afinal/annotation/view/EventListener;->itemClick(Ljava/lang/String;)Lcom/yf/gattlib/http/afinal/annotation/view/EventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 117
    :pswitch_2
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 118
    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/yf/gattlib/http/afinal/annotation/view/EventListener;

    invoke-direct {v1, p0}, Lcom/yf/gattlib/http/afinal/annotation/view/EventListener;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Lcom/yf/gattlib/http/afinal/annotation/view/EventListener;->longClick(Ljava/lang/String;)Lcom/yf/gattlib/http/afinal/annotation/view/EventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 122
    :pswitch_3
    instance-of v1, v0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_0

    .line 123
    check-cast v0, Landroid/widget/AbsListView;

    new-instance v1, Lcom/yf/gattlib/http/afinal/annotation/view/EventListener;

    invoke-direct {v1, p0}, Lcom/yf/gattlib/http/afinal/annotation/view/EventListener;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Lcom/yf/gattlib/http/afinal/annotation/view/EventListener;->itemLongClick(Ljava/lang/String;)Lcom/yf/gattlib/http/afinal/annotation/view/EventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static setViewSelectListener(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 94
    check-cast v0, Landroid/widget/AbsListView;

    new-instance v1, Lcom/yf/gattlib/http/afinal/annotation/view/EventListener;

    invoke-direct {v1, p0}, Lcom/yf/gattlib/http/afinal/annotation/view/EventListener;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Lcom/yf/gattlib/http/afinal/annotation/view/EventListener;->select(Ljava/lang/String;)Lcom/yf/gattlib/http/afinal/annotation/view/EventListener;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/yf/gattlib/http/afinal/annotation/view/EventListener;->noSelect(Ljava/lang/String;)Lcom/yf/gattlib/http/afinal/annotation/view/EventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 96
    :cond_0
    return-void
.end method


# virtual methods
.method public setContentView(I)V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 35
    invoke-static {p0}, Lcom/yf/gattlib/http/afinal/FinalActivity;->initInjectedView(Landroid/app/Activity;)V

    .line 36
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 47
    invoke-static {p0}, Lcom/yf/gattlib/http/afinal/FinalActivity;->initInjectedView(Landroid/app/Activity;)V

    .line 48
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    invoke-static {p0}, Lcom/yf/gattlib/http/afinal/FinalActivity;->initInjectedView(Landroid/app/Activity;)V

    .line 42
    return-void
.end method
