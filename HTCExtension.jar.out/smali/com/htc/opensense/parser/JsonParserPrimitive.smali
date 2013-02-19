.class public Lcom/htc/opensense/parser/JsonParserPrimitive;
.super Lcom/htc/opensense/parser/BasicParserPrimitive;
.source "JsonParserPrimitive.java"


# instance fields
.field mPimitive:Lcom/htc/gson/JsonElement;


# direct methods
.method public constructor <init>(Lcom/htc/gson/JsonElement;)V
    .locals 0
    .parameter "element"

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/htc/opensense/parser/BasicParserPrimitive;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/htc/opensense/parser/JsonParserPrimitive;->mPimitive:Lcom/htc/gson/JsonElement;

    .line 10
    return-void
.end method


# virtual methods
.method public getAsBoolean()Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/opensense/parser/JsonParserPrimitive;->mPimitive:Lcom/htc/gson/JsonElement;

    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getAsInt()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/opensense/parser/JsonParserPrimitive;->mPimitive:Lcom/htc/gson/JsonElement;

    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsInt()I

    move-result v0

    return v0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/opensense/parser/JsonParserPrimitive;->mPimitive:Lcom/htc/gson/JsonElement;

    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isParseable()Z
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/opensense/parser/JsonParserPrimitive;->mPimitive:Lcom/htc/gson/JsonElement;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
