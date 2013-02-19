.class public Lcom/sprint/internal/APNStructure;
.super Ljava/lang/Object;
.source "APNStructure.java"


# static fields
.field private static final APN_DATA:Ljava/lang/String; = "APN Data"

.field private static final APN_NAME_TYPE:Ljava/lang/String; = "APN Name Type"

.field private static final APN_NI:Ljava/lang/String; = "APN NI"

.field private static final APN_TREE_NODE:Ljava/lang/String; = "APN_TREE_NODE"

.field private static final AUTHENTICATION_TYPE:Ljava/lang/String; = "Authentication Type"

.field private static final INACTIVITY_TIMER:Ljava/lang/String; = "Inactivity Timer"

.field private static final LOG_TAG:Ljava/lang/String; = "APNStructure"

.field private static final PASSWORD:Ljava/lang/String; = "Password"

.field private static final PDN_TYPE:Ljava/lang/String; = "PDN Type"

.field private static final RAT_TYPE:Ljava/lang/String; = "RAT Type"

.field private static final USERNAME:Ljava/lang/String; = "Username"

.field private static me:Lcom/sprint/internal/APNStructure;


# instance fields
.field APNtable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/internal/APNStructure;->me:Lcom/sprint/internal/APNStructure;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    .line 26
    const-string v0, "APNStructure"

    const-string v1, "APNStructure constructure."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    .line 28
    invoke-virtual {p0}, Lcom/sprint/internal/APNStructure;->init()V

    .line 29
    return-void
.end method


# virtual methods
.method public GetAPNData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    iget-object v1, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v2, "APN Data"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 82
    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #value:Ljava/lang/String;
    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public GetAPNNI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 102
    iget-object v1, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v2, "APN NI"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 106
    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #value:Ljava/lang/String;
    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public GetAPNNameType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 94
    iget-object v1, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v2, "APN Name Type"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 98
    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #value:Ljava/lang/String;
    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public GetAPNTreeNode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    iget-object v1, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v2, "APN_TREE_NODE"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 90
    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #value:Ljava/lang/String;
    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public GetAuthenticationType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v2, "Authentication Type"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 138
    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #value:Ljava/lang/String;
    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public GetInactivityTimer()Ljava/lang/String;
    .locals 3

    .prologue
    .line 118
    iget-object v1, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v2, "Inactivity Timer"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 122
    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #value:Ljava/lang/String;
    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public GetPDNType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    iget-object v1, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v2, "PDN Type"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 114
    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #value:Ljava/lang/String;
    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public GetPassword()Ljava/lang/String;
    .locals 3

    .prologue
    .line 150
    iget-object v1, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v2, "Password"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 151
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 154
    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #value:Ljava/lang/String;
    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public GetRATType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 126
    iget-object v1, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v2, "RAT Type"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 130
    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #value:Ljava/lang/String;
    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public GetUsername()Ljava/lang/String;
    .locals 3

    .prologue
    .line 142
    iget-object v1, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v2, "Username"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 143
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 146
    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #value:Ljava/lang/String;
    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public SetAPNData(Ljava/lang/String;)V
    .locals 2
    .parameter "input"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v1, "APN Data"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public SetAPNNI(Ljava/lang/String;)V
    .locals 2
    .parameter "input"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v1, "APN NI"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public SetAPNNameType(Ljava/lang/String;)V
    .locals 2
    .parameter "input"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v1, "APN Name Type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public SetAPNTreeNode(Ljava/lang/String;)V
    .locals 2
    .parameter "input"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v1, "APN_TREE_NODE"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public SetAuthenticationType(Ljava/lang/String;)V
    .locals 2
    .parameter "input"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v1, "Authentication Type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public SetInactivityTimer(Ljava/lang/String;)V
    .locals 2
    .parameter "input"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v1, "Inactivity Timer"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public SetPDNType(Ljava/lang/String;)V
    .locals 2
    .parameter "input"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v1, "PDN Type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public SetPassword(Ljava/lang/String;)V
    .locals 2
    .parameter "input"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v1, "Password"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public SetRATType(Ljava/lang/String;)V
    .locals 2
    .parameter "input"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v1, "RAT Type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public SetUsername(Ljava/lang/String;)V
    .locals 2
    .parameter "input"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v1, "Username"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public dumpTheClass()V
    .locals 4

    .prologue
    .line 160
    const-string v0, "APNStructure"

    const-string v1, "================="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v1, "APNStructure"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APN_DATA: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v3, "APN Data"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v1, "APNStructure"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APN_TREE_NODE: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v3, "APN_TREE_NODE"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v1, "APNStructure"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APN_NAME_TYPE: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v3, "APN Name Type"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v1, "APNStructure"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APN_NI: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v3, "APN NI"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v1, "APNStructure"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PDN_TYPE: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v3, "PDN Type"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string v1, "APNStructure"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INACTIVITY_TIMER: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v3, "Inactivity Timer"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v1, "APNStructure"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RAT_TYPE: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v3, "RAT Type"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string v1, "APNStructure"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AUTHENTICATION_TYPE: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v3, "Authentication Type"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v1, "APNStructure"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USERNAME: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v3, "Username"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v1, "APNStructure"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PASSWORD: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v3, "Password"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v0, "APNStructure"

    const-string v1, "================="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v1, "APN Data"

    const-string v2, "null"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v1, "APN_TREE_NODE"

    const-string v2, "null"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v1, "APN Name Type"

    const-string v2, "null"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v1, "APN NI"

    const-string v2, "null"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v1, "PDN Type"

    const-string v2, "null"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v1, "Inactivity Timer"

    const-string v2, "null"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v1, "RAT Type"

    const-string v2, "null"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v1, "Authentication Type"

    const-string v2, "null"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v1, "Username"

    const-string v2, "null"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/sprint/internal/APNStructure;->APNtable:Ljava/util/Map;

    const-string v1, "Password"

    const-string v2, "null"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method
