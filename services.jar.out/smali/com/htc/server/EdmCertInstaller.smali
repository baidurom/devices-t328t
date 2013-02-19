.class public Lcom/htc/server/EdmCertInstaller;
.super Ljava/lang/Object;
.source "EdmCertInstaller.java"


# static fields
.field static final CERT_NAME_KEY:Ljava/lang/String; = "name"

.field static final REQUEST_INSTALL_CODE:I = 0x1

.field static final TAG:Ljava/lang/String; = "EdmCertInstaller"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static install(Landroid/content/Context;Lcom/htc/app/admin/CertInfo;)I
    .locals 5
    .parameter "ctx"
    .parameter "ci"

    .prologue
    .line 21
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 23
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.certinstaller"

    const-string v3, "com.android.certinstaller.CertInstaller"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 26
    const-string v2, "EdmCertInstaller"

    invoke-virtual {p1}, Lcom/htc/app/admin/CertInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const-string v2, "name"

    invoke-virtual {p1}, Lcom/htc/app/admin/CertInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    invoke-virtual {p1}, Lcom/htc/app/admin/CertInfo;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 40
    const-string v2, "EdmCertInstaller"

    const-string v3, "Unsupport Certificate Type"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v2, -0x1

    .line 51
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    .line 31
    .restart local v1       #intent:Landroid/content/Intent;
    :pswitch_0
    const-string v2, "EdmCertInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CertInfo: FileData="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/app/admin/CertInfo;->getFileData()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const-string v2, "CERT"

    invoke-virtual {p1}, Lcom/htc/app/admin/CertInfo;->getFileData()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 43
    :goto_1
    const-string v2, "com.htc.app.admin.CertInfo.EDM_CERTIFICATE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 45
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 51
    .end local v1           #intent:Landroid/content/Intent;
    :goto_2
    const/4 v2, 0x0

    goto :goto_0

    .line 35
    .restart local v1       #intent:Landroid/content/Intent;
    :pswitch_1
    const-string v2, "EdmCertInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CertInfo: FileData="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/app/admin/CertInfo;->getFileData()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string v2, "PKCS12"

    invoke-virtual {p1}, Lcom/htc/app/admin/CertInfo;->getFileData()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 48
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "EdmCertInstaller"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 28
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
