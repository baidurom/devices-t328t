.class public abstract Lcom/htc/opensense/parser/BasicParser;
.super Ljava/lang/Object;
.source "BasicParser.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BasicParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAsArray(Ljava/lang/Object;)Lcom/htc/opensense/parser/BasicParserArray;
    .locals 4
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialException;
        }
    .end annotation

    .prologue
    .line 66
    :try_start_0
    check-cast p0, Lcom/htc/opensense/parser/BasicParserArray;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p0
    return-object p0

    .line 67
    .restart local p0
    :catch_0
    move-exception v0

    .line 68
    .local v0, e:Ljava/lang/ClassCastException;
    new-instance v1, Lcom/htc/opensense/social/SocialException;

    const/4 v2, 0x1

    const-string v3, "Response is not as expected format"

    invoke-direct {v1, v2, v3}, Lcom/htc/opensense/social/SocialException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public static getAsObj(Ljava/lang/Object;)Lcom/htc/opensense/parser/BasicParserObj;
    .locals 4
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialException;
        }
    .end annotation

    .prologue
    .line 56
    :try_start_0
    check-cast p0, Lcom/htc/opensense/parser/BasicParserObj;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p0
    return-object p0

    .line 57
    .restart local p0
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Ljava/lang/ClassCastException;
    new-instance v1, Lcom/htc/opensense/social/SocialException;

    const/4 v2, 0x1

    const-string v3, "Response is not as expected format"

    invoke-direct {v1, v2, v3}, Lcom/htc/opensense/social/SocialException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public static getParser(Ljava/lang/String;)Lcom/htc/opensense/parser/BasicParser;
    .locals 4
    .parameter "content"

    .prologue
    .line 19
    new-instance v1, Lcom/htc/gson/JsonParser;

    invoke-direct {v1}, Lcom/htc/gson/JsonParser;-><init>()V

    .line 20
    .local v1, parser:Lcom/htc/gson/JsonParser;
    const-string/jumbo v2, "{"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "}"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    invoke-virtual {v1, p0}, Lcom/htc/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    .line 22
    .local v0, element:Lcom/htc/gson/JsonElement;
    new-instance v2, Lcom/htc/opensense/parser/JsonParserObject;

    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsJsonObject()Lcom/htc/gson/JsonObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/opensense/parser/JsonParserObject;-><init>(Lcom/htc/gson/JsonObject;)V

    .line 28
    .end local v0           #element:Lcom/htc/gson/JsonElement;
    :goto_0
    return-object v2

    .line 23
    :cond_0
    const-string v2, "["

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 24
    invoke-virtual {v1, p0}, Lcom/htc/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    .line 25
    .restart local v0       #element:Lcom/htc/gson/JsonElement;
    new-instance v2, Lcom/htc/opensense/parser/JsonParserArray;

    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsJsonArray()Lcom/htc/gson/JsonArray;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/opensense/parser/JsonParserArray;-><init>(Lcom/htc/gson/JsonArray;)V

    goto :goto_0

    .line 28
    .end local v0           #element:Lcom/htc/gson/JsonElement;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isError(Lcom/htc/opensense/parser/BasicParser;)V
    .locals 9
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 74
    instance-of v6, p0, Lcom/htc/opensense/parser/BasicParserObj;

    if-eqz v6, :cond_3

    move-object v1, p0

    .line 75
    check-cast v1, Lcom/htc/opensense/parser/BasicParserObj;

    .line 76
    .local v1, errorObj:Lcom/htc/opensense/parser/BasicParserObj;
    const/4 v2, -0x1

    .line 77
    .local v2, error_code:I
    const/4 v0, 0x0

    .line 78
    .local v0, errorMsg:Ljava/lang/String;
    const-string v6, "error_code"

    invoke-virtual {v1, v6}, Lcom/htc/opensense/parser/BasicParserObj;->hasKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 79
    const-string v6, "error_code"

    invoke-virtual {v1, v6}, Lcom/htc/opensense/parser/BasicParserObj;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 80
    const-string v6, "error_msg"

    invoke-virtual {v1, v6}, Lcom/htc/opensense/parser/BasicParserObj;->parseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_0
    if-ltz v2, :cond_3

    .line 99
    sparse-switch v2, :sswitch_data_0

    .line 110
    new-instance v6, Lcom/htc/opensense/social/SocialException;

    invoke-direct {v6, v7, v0}, Lcom/htc/opensense/social/SocialException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 82
    :cond_1
    const-string v6, "error"

    invoke-virtual {v1, v6}, Lcom/htc/opensense/parser/BasicParserObj;->parseObj(Ljava/lang/String;)Lcom/htc/opensense/parser/BasicParserObj;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_0

    .line 84
    const-string v6, "message"

    invoke-virtual {v1, v6}, Lcom/htc/opensense/parser/BasicParserObj;->parseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, message:Ljava/lang/String;
    move-object v0, v4

    .line 86
    const-string v6, "[0-9]+"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 88
    .local v3, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 89
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, result:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 92
    .end local v5           #result:Ljava/lang/String;
    :cond_2
    const/4 v6, -0x1

    if-ne v2, v6, :cond_0

    if-eqz v4, :cond_0

    .line 93
    new-instance v6, Lcom/htc/opensense/social/SocialException;

    invoke-direct {v6, v7, v4}, Lcom/htc/opensense/social/SocialException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 105
    .end local v3           #matcher:Ljava/util/regex/Matcher;
    .end local v4           #message:Ljava/lang/String;
    :sswitch_0
    new-instance v6, Lcom/htc/opensense/social/SocialException;

    const/4 v7, 0x2

    const-string v8, "session expire"

    invoke-direct {v6, v7, v8}, Lcom/htc/opensense/social/SocialException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 113
    .end local v0           #errorMsg:Ljava/lang/String;
    .end local v1           #errorObj:Lcom/htc/opensense/parser/BasicParserObj;
    .end local v2           #error_code:I
    :cond_3
    return-void

    .line 99
    nop

    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_0
        0x190 -> :sswitch_0
        0x191 -> :sswitch_0
        0x1c5 -> :sswitch_0
    .end sparse-switch
.end method

.method public static parseToObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialException;
        }
    .end annotation

    .prologue
    .line 37
    move-object v1, p0

    .line 38
    .local v1, result:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/opensense/parser/BasicParser;->getParser(Ljava/lang/String;)Lcom/htc/opensense/parser/BasicParser;

    move-result-object v0

    .line 39
    .local v0, parser:Lcom/htc/opensense/parser/BasicParser;
    const-string/jumbo v2, "{}"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    const/4 v1, 0x0

    .line 50
    .end local v1           #result:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 41
    .restart local v1       #result:Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/htc/opensense/parser/BasicParser;->isParseable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 42
    invoke-static {v0}, Lcom/htc/opensense/parser/BasicParser;->isError(Lcom/htc/opensense/parser/BasicParser;)V

    .line 43
    move-object v1, v0

    .local v1, result:Lcom/htc/opensense/parser/BasicParser;
    goto :goto_0

    .line 44
    .local v1, result:Ljava/lang/String;
    :cond_2
    const-string v2, "<"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, ">"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 45
    const-string v1, "Connection error"

    goto :goto_0

    .line 46
    :cond_3
    const-string v2, "\""

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "\""

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public abstract isParseable()Z
.end method
