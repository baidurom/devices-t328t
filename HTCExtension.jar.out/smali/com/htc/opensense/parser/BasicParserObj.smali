.class public abstract Lcom/htc/opensense/parser/BasicParserObj;
.super Lcom/htc/opensense/parser/BasicParser;
.source "BasicParserObj.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/htc/opensense/parser/BasicParser;-><init>()V

    return-void
.end method

.method public static isErrorObj(Lcom/htc/opensense/parser/BasicParserObj;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 31
    const-string v0, "error"

    invoke-virtual {p0, v0}, Lcom/htc/opensense/parser/BasicParserObj;->hasKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract hasKey(Ljava/lang/String;)Z
.end method

.method public abstract parseArray(Ljava/lang/String;)Lcom/htc/opensense/parser/BasicParserArray;
.end method

.method public abstract parseBoolean(Ljava/lang/String;)Z
.end method

.method public abstract parseBoolean(Ljava/lang/String;Z)Z
.end method

.method public abstract parseDouble(Ljava/lang/String;)D
.end method

.method public abstract parseDouble(Ljava/lang/String;D)D
.end method

.method public abstract parseFloat(Ljava/lang/String;)F
.end method

.method public abstract parseFloat(Ljava/lang/String;F)F
.end method

.method public abstract parseInt(Ljava/lang/String;)I
.end method

.method public abstract parseInt(Ljava/lang/String;I)I
.end method

.method public abstract parseLong(Ljava/lang/String;)J
.end method

.method public abstract parseLong(Ljava/lang/String;J)J
.end method

.method public abstract parseObj(Ljava/lang/String;)Lcom/htc/opensense/parser/BasicParserObj;
.end method

.method public abstract parseString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract parseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
