.class Lcom/htc/cscore/restapi/proxy/ClientRestApi$16;
.super Lcom/htc/gson/reflect/TypeToken;
.source "ClientRestApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/cscore/restapi/proxy/ClientRestApi;->GetFriendsRecommendedCommentsLikes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;II)Lcom/htc/cscore/restapi/json/SearchResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/gson/reflect/TypeToken",
        "<",
        "Lcom/htc/cscore/restapi/json/SearchResults",
        "<",
        "Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/cscore/restapi/proxy/ClientRestApi;


# direct methods
.method constructor <init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V
    .locals 0
    .parameter

    .prologue
    .line 880
    iput-object p1, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi$16;->this$0:Lcom/htc/cscore/restapi/proxy/ClientRestApi;

    invoke-direct {p0}, Lcom/htc/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
