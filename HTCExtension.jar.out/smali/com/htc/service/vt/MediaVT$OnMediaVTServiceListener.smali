.class public Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;
.super Lcom/htc/service/vt/OnMediaVTServiceEventListener$Stub;
.source "MediaVT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/service/vt/MediaVT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnMediaVTServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/service/vt/MediaVT;


# direct methods
.method public constructor <init>(Lcom/htc/service/vt/MediaVT;)V
    .locals 0
    .parameter

    .prologue
    .line 1159
    iput-object p1, p0, Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;->this$0:Lcom/htc/service/vt/MediaVT;

    invoke-direct {p0}, Lcom/htc/service/vt/OnMediaVTServiceEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaVTServiceEvent(II)Z
    .locals 4
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v0, 0x0

    .line 1162
    const-string v1, "MediaVT_Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "what: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,extra: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    packed-switch p1, :pswitch_data_0

    .line 1169
    const-string v1, "MediaVT_Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown MediaVTService message type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    :goto_0
    return v0

    .line 1165
    :pswitch_0
    const-string v1, "MediaVT_Java"

    const-string v2, "send VT_MEDIAVTSERVICE_GET_SURFACE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;->this$0:Lcom/htc/service/vt/MediaVT;

    const/16 v2, 0x12e

    const/4 v3, 0x0

    #calls: Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V
    invoke-static {v1, v2, v0, v0, v3}, Lcom/htc/service/vt/MediaVT;->access$100(Lcom/htc/service/vt/MediaVT;IIILjava/lang/Object;)V

    .line 1167
    const/4 v0, 0x1

    goto :goto_0

    .line 1163
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method
