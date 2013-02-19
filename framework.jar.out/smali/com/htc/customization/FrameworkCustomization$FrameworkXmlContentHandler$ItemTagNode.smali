.class Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;
.super Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;
.source "FrameworkCustomization.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemTagNode"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;

.field private value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;->this$1:Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;

    invoke-direct {p0, p1}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;-><init>(Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler;)V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;->value:Ljava/lang/String;

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "attribute"
    .parameter "value"

    .prologue
    .line 512
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    if-nez p2, :cond_0

    .line 514
    const-string/jumbo p2, "string"

    .line 517
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$TagNode;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 522
    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "boolean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {p0, p1}, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;->translateToTrueFalse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 526
    :cond_0
    iput-object p1, p0, Lcom/htc/customization/FrameworkCustomization$FrameworkXmlContentHandler$ItemTagNode;->value:Ljava/lang/String;

    .line 527
    return-void
.end method

.method public translateToTrueFalse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 536
    const-string/jumbo v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    const-string/jumbo v0, "true"

    .line 547
    :goto_0
    return-object v0

    .line 540
    :cond_0
    const-string/jumbo v0, "yes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    const-string/jumbo v0, "true"

    goto :goto_0

    .line 544
    :cond_1
    const-string/jumbo v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 545
    const-string/jumbo v0, "true"

    goto :goto_0

    .line 547
    :cond_2
    const-string v0, "false"

    goto :goto_0
.end method
