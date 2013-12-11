.class public Lcom/htc/lockscreen/HtcLSView;
.super Landroid/widget/RemoteViews;
.source "HtcLSView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/HtcLSView$AnimeAction;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lockscreen/HtcLSView;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "HtcLSView"


# instance fields
.field private mAnimeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/lockscreen/HtcLSView$AnimeAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lcom/htc/lockscreen/HtcLSView$1;

    invoke-direct {v0}, Lcom/htc/lockscreen/HtcLSView$1;-><init>()V

    sput-object v0, Lcom/htc/lockscreen/HtcLSView;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "parcel"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;)V

    .line 19
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/htc/lockscreen/HtcLSView;->mAnimeList:Ljava/util/ArrayList;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 128
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 129
    iget-object v2, p0, Lcom/htc/lockscreen/HtcLSView;->mAnimeList:Ljava/util/ArrayList;

    new-instance v3, Lcom/htc/lockscreen/HtcLSView$AnimeAction;

    invoke-direct {v3, p0, p1}, Lcom/htc/lockscreen/HtcLSView$AnimeAction;-><init>(Lcom/htc/lockscreen/HtcLSView;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/HtcLSView;->mAnimeList:Ljava/util/ArrayList;

    .line 123
    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "parent"

    .prologue
    .line 135
    invoke-super {p0, p1, p2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 136
    .local v2, view:Landroid/view/View;
    iget-object v3, p0, Lcom/htc/lockscreen/HtcLSView;->mAnimeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lockscreen/HtcLSView$AnimeAction;

    .line 137
    .local v0, aAction:Lcom/htc/lockscreen/HtcLSView$AnimeAction;
    invoke-virtual {v0, p1, v2}, Lcom/htc/lockscreen/HtcLSView$AnimeAction;->apply(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    .line 139
    .end local v0           #aAction:Lcom/htc/lockscreen/HtcLSView$AnimeAction;
    :cond_0
    return-object v2
.end method

.method public reapply(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .parameter "context"
    .parameter "v"

    .prologue
    .line 147
    invoke-super {p0, p1, p2}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    .line 148
    iget-object v2, p0, Lcom/htc/lockscreen/HtcLSView;->mAnimeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lockscreen/HtcLSView$AnimeAction;

    .line 149
    .local v0, aAction:Lcom/htc/lockscreen/HtcLSView$AnimeAction;
    invoke-virtual {v0, p1, p2}, Lcom/htc/lockscreen/HtcLSView$AnimeAction;->apply(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    .line 151
    .end local v0           #aAction:Lcom/htc/lockscreen/HtcLSView$AnimeAction;
    :cond_0
    return-void
.end method

.method public setImageViewAnimationDrawable(II)V
    .locals 2
    .parameter "resId"
    .parameter "AnimeId"

    .prologue
    .line 170
    new-instance v0, Lcom/htc/lockscreen/HtcLSView$AnimeAction;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/lockscreen/HtcLSView$AnimeAction;-><init>(Lcom/htc/lockscreen/HtcLSView;II)V

    .line 171
    .local v0, aAction:Lcom/htc/lockscreen/HtcLSView$AnimeAction;
    iget-object v1, p0, Lcom/htc/lockscreen/HtcLSView;->mAnimeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 154
    iget-object v2, p0, Lcom/htc/lockscreen/HtcLSView;->mAnimeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lockscreen/HtcLSView$AnimeAction;

    .line 155
    .local v0, aAction:Lcom/htc/lockscreen/HtcLSView$AnimeAction;
    invoke-virtual {v0}, Lcom/htc/lockscreen/HtcLSView$AnimeAction;->start()V

    goto :goto_0

    .line 157
    .end local v0           #aAction:Lcom/htc/lockscreen/HtcLSView$AnimeAction;
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 160
    iget-object v2, p0, Lcom/htc/lockscreen/HtcLSView;->mAnimeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lockscreen/HtcLSView$AnimeAction;

    .line 161
    .local v0, aAction:Lcom/htc/lockscreen/HtcLSView$AnimeAction;
    invoke-virtual {v0}, Lcom/htc/lockscreen/HtcLSView$AnimeAction;->stop()V

    goto :goto_0

    .line 163
    .end local v0           #aAction:Lcom/htc/lockscreen/HtcLSView$AnimeAction;
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 179
    invoke-super {p0, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 180
    iget-object v3, p0, Lcom/htc/lockscreen/HtcLSView;->mAnimeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 181
    .local v1, count:I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget-object v3, p0, Lcom/htc/lockscreen/HtcLSView;->mAnimeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lockscreen/HtcLSView$AnimeAction;

    .line 183
    .local v0, aAction:Lcom/htc/lockscreen/HtcLSView$AnimeAction;
    invoke-virtual {v0, p1, p2}, Lcom/htc/lockscreen/HtcLSView$AnimeAction;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 185
    .end local v0           #aAction:Lcom/htc/lockscreen/HtcLSView$AnimeAction;
    :cond_0
    return-void
.end method
