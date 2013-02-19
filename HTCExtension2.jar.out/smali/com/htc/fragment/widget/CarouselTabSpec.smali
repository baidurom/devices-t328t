.class public Lcom/htc/fragment/widget/CarouselTabSpec;
.super Ljava/lang/Object;
.source "CarouselTabSpec.java"


# instance fields
.field ic_on_id:I

.field ic_overlay_id:I

.field ic_rest_id:I

.field intent:Landroid/content/Intent;

.field isInCarouselWidget:Z

.field isRemovable:Z

.field str_title_id:I

.field tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIILandroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .parameter "title"
    .parameter "rest"
    .parameter "on"
    .parameter "overlay"
    .parameter "applicationPackageContext"
    .parameter "classQualifiedName"

    .prologue
    const/4 v0, 0x1

    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselTabSpec;->isInCarouselWidget:Z

    .line 21
    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselTabSpec;->isRemovable:Z

    .line 69
    invoke-direct/range {p0 .. p5}, Lcom/htc/fragment/widget/CarouselTabSpec;->fillFeilds(Ljava/lang/String;IIII)V

    .line 70
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselTabSpec;->intent:Landroid/content/Intent;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILjava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "title"
    .parameter "rest"
    .parameter "on"
    .parameter "overlay"
    .parameter "classQualifiedName"

    .prologue
    const/4 v0, 0x1

    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselTabSpec;->isInCarouselWidget:Z

    .line 21
    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselTabSpec;->isRemovable:Z

    .line 35
    invoke-direct/range {p0 .. p5}, Lcom/htc/fragment/widget/CarouselTabSpec;->fillFeilds(Ljava/lang/String;IIII)V

    .line 36
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselTabSpec;->intent:Landroid/content/Intent;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .parameter "title"
    .parameter "rest"
    .parameter "on"
    .parameter "overlay"
    .parameter "applicationPackageName"
    .parameter "classQualifiedName"

    .prologue
    const/4 v0, 0x1

    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselTabSpec;->isInCarouselWidget:Z

    .line 21
    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselTabSpec;->isRemovable:Z

    .line 52
    invoke-direct/range {p0 .. p5}, Lcom/htc/fragment/widget/CarouselTabSpec;->fillFeilds(Ljava/lang/String;IIII)V

    .line 53
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselTabSpec;->intent:Landroid/content/Intent;

    .line 54
    return-void
.end method

.method private fillFeilds(Ljava/lang/String;IIII)V
    .locals 0
    .parameter "tag"
    .parameter "title"
    .parameter "rest"
    .parameter "on"
    .parameter "overlay"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselTabSpec;->tag:Ljava/lang/String;

    .line 75
    iput p2, p0, Lcom/htc/fragment/widget/CarouselTabSpec;->str_title_id:I

    .line 76
    iput p3, p0, Lcom/htc/fragment/widget/CarouselTabSpec;->ic_rest_id:I

    .line 77
    iput p4, p0, Lcom/htc/fragment/widget/CarouselTabSpec;->ic_on_id:I

    .line 78
    iput p5, p0, Lcom/htc/fragment/widget/CarouselTabSpec;->ic_overlay_id:I

    .line 79
    return-void
.end method


# virtual methods
.method public setArguments(Landroid/os/Bundle;)Lcom/htc/fragment/widget/CarouselTabSpec;
    .locals 6
    .parameter "args"

    .prologue
    .line 87
    if-eqz p1, :cond_3

    .line 88
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 89
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 90
    .local v2, value:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 92
    instance-of v3, v2, Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Carousel.UriString://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast v2, Landroid/net/Uri;

    .end local v2           #value:Ljava/lang/Object;
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    .restart local v2       #value:Ljava/lang/Object;
    :cond_1
    instance-of v3, v2, Ljava/lang/Boolean;

    if-nez v3, :cond_0

    instance-of v3, v2, Ljava/lang/Byte;

    if-nez v3, :cond_0

    instance-of v3, v2, Ljava/lang/Character;

    if-nez v3, :cond_0

    instance-of v3, v2, Ljava/lang/Double;

    if-nez v3, :cond_0

    instance-of v3, v2, Ljava/lang/Float;

    if-nez v3, :cond_0

    instance-of v3, v2, Ljava/lang/Integer;

    if-nez v3, :cond_0

    instance-of v3, v2, Ljava/lang/Long;

    if-nez v3, :cond_0

    instance-of v3, v2, Ljava/lang/Short;

    if-nez v3, :cond_0

    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_0

    .line 103
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupport argument type of CarouselFragment, key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 106
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselTabSpec;->intent:Landroid/content/Intent;

    invoke-virtual {v3, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 108
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_3
    return-object p0
.end method

.method public setState(I)Lcom/htc/fragment/widget/CarouselTabSpec;
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 118
    packed-switch p1, :pswitch_data_0

    .line 132
    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselTabSpec;->isInCarouselWidget:Z

    .line 133
    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselTabSpec;->isRemovable:Z

    .line 135
    :goto_0
    return-object p0

    .line 120
    :pswitch_0
    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselTabSpec;->isInCarouselWidget:Z

    .line 121
    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselTabSpec;->isRemovable:Z

    goto :goto_0

    .line 124
    :pswitch_1
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselTabSpec;->isInCarouselWidget:Z

    .line 125
    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselTabSpec;->isRemovable:Z

    goto :goto_0

    .line 128
    :pswitch_2
    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselTabSpec;->isInCarouselWidget:Z

    .line 129
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselTabSpec;->isRemovable:Z

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
