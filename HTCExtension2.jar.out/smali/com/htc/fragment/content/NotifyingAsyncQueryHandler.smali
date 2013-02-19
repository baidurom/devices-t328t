.class public Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;
.super Lcom/htc/fragment/content/AsyncQueryHandler;
.source "NotifyingAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;,
        Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;
    }
.end annotation


# instance fields
.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerExt:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/fragment/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 67
    invoke-virtual {p0, p2}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->setQueryListener(Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "listener_ext"

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/fragment/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 72
    invoke-virtual {p0, p2}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->setQueryListener(Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;)V

    .line 73
    invoke-virtual {p0, p3}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->setQueryListenerExt(Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V

    .line 74
    return-void
.end method


# virtual methods
.method public bridge synthetic IsProcessingRightAway()Z
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/htc/fragment/content/AsyncQueryHandler;->IsProcessingRightAway()Z

    move-result v0

    return v0
.end method

.method protected addTabMemoryMode(ILjava/lang/Object;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"

    .prologue
    .line 196
    iget-object v1, p0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->mListenerExt:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;

    .line 197
    .local v0, listener:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;
    if-eqz v0, :cond_0

    .line 198
    invoke-interface {v0, p1, p2}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;->addTabMemoryMode(ILjava/lang/Object;)V

    .line 200
    :cond_0
    return-void
.end method

.method public bridge synthetic handleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/htc/fragment/content/AsyncQueryHandler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected isUpdateRequired(Ljava/lang/Object;Landroid/database/Cursor;Landroid/content/ContentValues;[I[Ljava/lang/String;)V
    .locals 6
    .parameter "cookie"
    .parameter "cursor"
    .parameter "values"
    .parameter "token"
    .parameter "tag"

    .prologue
    .line 164
    iget-object v1, p0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->mListenerExt:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;

    .line 165
    .local v0, listener:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 166
    invoke-interface/range {v0 .. v5}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;->isUpdateRequired(Ljava/lang/Object;Landroid/database/Cursor;Landroid/content/ContentValues;[I[Ljava/lang/String;)V

    .line 168
    :cond_0
    return-void
.end method

.method protected onAddTabComplete()V
    .locals 2

    .prologue
    .line 216
    iget-object v1, p0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->mListenerExt:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;

    .line 217
    .local v0, listener:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;
    if-eqz v0, :cond_0

    .line 218
    invoke-interface {v0}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;->onAddTabComplete()V

    .line 220
    :cond_0
    return-void
.end method

.method protected onCheckInsertOrUpdateComplete(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 184
    iget-object v1, p0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->mListenerExt:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;

    .line 185
    .local v0, listener:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;
    if-eqz v0, :cond_0

    .line 186
    invoke-interface {v0, p1, p2, p3}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;->onCheckInsertOrUpdateComplete(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 188
    :cond_0
    return-void
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 141
    iget-object v1, p0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;

    .line 142
    .local v0, listener:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;
    if-eqz v0, :cond_0

    .line 143
    invoke-interface {v0, p1, p2, p3}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;->onDeleteComplete(ILjava/lang/Object;I)V

    .line 145
    :cond_0
    return-void
.end method

.method protected onExceptionHandle(ILjava/lang/Object;ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "type"
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 154
    iget-object v1, p0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;

    .line 155
    .local v0, listener:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 156
    invoke-interface/range {v0 .. v7}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;->onExceptionHandle(ILjava/lang/Object;ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 158
    :cond_0
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 117
    iget-object v1, p0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;

    .line 118
    .local v0, listener:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;
    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v0, p1, p2, p3}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    .line 121
    :cond_0
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 102
    iget-object v1, p0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;

    .line 103
    .local v0, listener:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;
    if-eqz v0, :cond_1

    .line 104
    invoke-interface {v0, p1, p2, p3}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    if-eqz p3, :cond_0

    .line 106
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 129
    iget-object v1, p0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;

    .line 130
    .local v0, listener:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;
    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v0, p1, p2, p3}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;->onUpdateComplete(ILjava/lang/Object;I)V

    .line 133
    :cond_0
    return-void
.end method

.method protected prepareForInsertion(Ljava/lang/Object;Landroid/content/ContentValues;[I)V
    .locals 2
    .parameter "cookie"
    .parameter "values"
    .parameter "token"

    .prologue
    .line 174
    iget-object v1, p0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->mListenerExt:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;

    .line 175
    .local v0, listener:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;
    if-eqz v0, :cond_0

    .line 176
    invoke-interface {v0, p1, p2, p3}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;->prepareForInsertion(Ljava/lang/Object;Landroid/content/ContentValues;[I)V

    .line 178
    :cond_0
    return-void
.end method

.method public bridge synthetic setNoEditorMode(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/htc/fragment/content/AsyncQueryHandler;->setNoEditorMode(Z)V

    return-void
.end method

.method public setQueryListener(Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 85
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    .line 86
    return-void
.end method

.method public setQueryListenerExt(Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 93
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->mListenerExt:Ljava/lang/ref/WeakReference;

    .line 94
    return-void
.end method

.method public bridge synthetic setToQueueMode(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/htc/fragment/content/AsyncQueryHandler;->setToQueueMode(Z)V

    return-void
.end method

.method public bridge synthetic startProcessingOperations()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Lcom/htc/fragment/content/AsyncQueryHandler;->startProcessingOperations()V

    return-void
.end method

.method public bridge synthetic startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 37
    invoke-super/range {p0 .. p7}, Lcom/htc/fragment/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected updateTabMemoryMode(ILjava/lang/Object;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"

    .prologue
    .line 206
    iget-object v1, p0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->mListenerExt:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;

    .line 207
    .local v0, listener:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;
    if-eqz v0, :cond_0

    .line 208
    invoke-interface {v0, p1, p2}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;->updateTabMemoryMode(ILjava/lang/Object;)V

    .line 210
    :cond_0
    return-void
.end method
