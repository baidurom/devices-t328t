.class Lcom/htc/widget/CarouselHost$DecorHashMap;
.super Ljava/util/HashMap;
.source "CarouselHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/CarouselHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecorHashMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/ref/WeakReference",
        "<",
        "Landroid/view/View;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/CarouselHost;


# direct methods
.method private constructor <init>(Lcom/htc/widget/CarouselHost;)V
    .locals 0
    .parameter

    .prologue
    .line 2128
    iput-object p1, p0, Lcom/htc/widget/CarouselHost$DecorHashMap;->this$0:Lcom/htc/widget/CarouselHost;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/CarouselHost;Lcom/htc/widget/CarouselHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2128
    invoke-direct {p0, p1}, Lcom/htc/widget/CarouselHost$DecorHashMap;-><init>(Lcom/htc/widget/CarouselHost;)V

    return-void
.end method


# virtual methods
.method public putHash(Ljava/lang/String;Landroid/view/View;)Ljava/lang/ref/WeakReference;
    .locals 4
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ")",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2146
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2147
    :cond_0
    const/4 v0, 0x0

    .line 2160
    :goto_0
    return-object v0

    .line 2149
    :cond_1
    const/4 v0, 0x0

    .line 2151
    .local v0, prevsValue:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    invoke-virtual {p0, p1}, Lcom/htc/widget/CarouselHost$DecorHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2152
    invoke-virtual {p0, p1}, Lcom/htc/widget/CarouselHost$DecorHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #prevsValue:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 2155
    .restart local v0       #prevsValue:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    :cond_2
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Lcom/htc/widget/CarouselHost$DecorHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2158
    const-string v1, "Carousel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "put decorHash("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost$DecorHashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost$DecorHashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeHash(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 2133
    if-nez p1, :cond_0

    .line 2141
    :goto_0
    return-void

    .line 2136
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/widget/CarouselHost$DecorHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2137
    invoke-virtual {p0, p1}, Lcom/htc/widget/CarouselHost$DecorHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2140
    :cond_1
    const-string v0, "Carousel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove decorHash("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost$DecorHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost$DecorHashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
