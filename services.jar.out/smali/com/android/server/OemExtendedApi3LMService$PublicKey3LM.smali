.class Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;
.super Ljava/lang/Object;
.source "OemExtendedApi3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemExtendedApi3LMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PublicKey3LM"
.end annotation


# instance fields
.field private m3LMPublicKey:[B

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;->mContext:Landroid/content/Context;

    .line 113
    iget-object v0, p0, Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;->init3LMPublicKey(Landroid/content/Context;)V

    .line 115
    return-void
.end method

.method private extractPublicKey([B)Ljava/security/PublicKey;
    .locals 6
    .parameter "blob"

    .prologue
    .line 121
    :try_start_0
    const-string v3, "X509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 122
    .local v0, certFactory:Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    .line 124
    .local v2, x509Cert:Ljava/security/cert/Certificate;
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 128
    .end local v0           #certFactory:Ljava/security/cert/CertificateFactory;
    .end local v2           #x509Cert:Ljava/security/cert/Certificate;
    :goto_0
    return-object v3

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, e:Ljava/security/cert/CertificateException;
    const-string v3, "OemExtendedApi3LM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Certificate parsing exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private init3LMPublicKey(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 148
    .local v2, resources:Landroid/content/res/Resources;
    const-string v3, "1"

    const-string v4, "ro.3lm.production"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    const v3, 0x10404e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, cert:Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;->extractPublicKey([B)Ljava/security/PublicKey;

    move-result-object v1

    .line 154
    .local v1, key:Ljava/security/PublicKey;
    if-eqz v1, :cond_1

    .line 155
    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;->m3LMPublicKey:[B

    .line 159
    :goto_1
    return-void

    .line 151
    .end local v0           #cert:Ljava/lang/String;
    .end local v1           #key:Ljava/security/PublicKey;
    :cond_0
    const v3, 0x10404e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #cert:Ljava/lang/String;
    goto :goto_0

    .line 157
    .restart local v1       #key:Ljava/security/PublicKey;
    :cond_1
    const-string v3, "OemExtendedApi3LM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extractPublicKey return null, cert="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public comparePublicKey([B)Z
    .locals 3
    .parameter "blob"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;->extractPublicKey([B)Ljava/security/PublicKey;

    move-result-object v0

    .line 134
    .local v0, blobKey:Ljava/security/PublicKey;
    iget-object v1, p0, Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;->m3LMPublicKey:[B

    if-nez v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;->init3LMPublicKey(Landroid/content/Context;)V

    .line 136
    iget-object v1, p0, Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;->m3LMPublicKey:[B

    if-nez v1, :cond_0

    .line 137
    const/4 v1, 0x1

    .line 141
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;->m3LMPublicKey:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0
.end method
