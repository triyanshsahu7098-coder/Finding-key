.class public Lcom/cheatbox/LoginActivity;
.super Lo1;
.source "r8-map-id-a36d9ba84d8b67cc1ea5a39e1858eb565e4449ae1db1cf76728fba9d9d905344"


# static fields
.field private static final MIN_KEY_LENGTH:I = 0x5

.field private static final PERMISSION_AUDIO:I = 0x66

.field private static final PERMISSION_NOTIFICATIONS:I = 0x1

.field private static final PERMISSION_STORAGE:I = 0x65

.field private static final PROGRESS_STEP_MS:I = 0x32

.field private static final PROGRESS_STEP_PCT:I = 0x2


# instance fields
.field private emailField:Lcom/google/android/material/textfield/TextInputEditText;

.field private emailLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private loginButton:Lcom/google/android/material/button/MaterialButton;

.field private m_Prefs:Lmx;

.field private progressDialog:Landroid/app/AlertDialog;

.field private progressHandler:Landroid/os/Handler;

.field private telegramLink:Landroid/widget/TextView;

.field private versionLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lo1;-><init>()V

    .line 4
    return-void
.end method

.method private VPNCheck()Z
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    .line 5
    move-result-object v1

    .line 6
    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    :cond_e
    if-ge v3, v2, :cond_4e

    .line 17
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v4

    .line 21
    add-int/lit8 v3, v3, 0x1

    .line 23
    check-cast v4, Ljava/net/NetworkInterface;

    .line 25
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->isUp()Z

    .line 28
    move-result v5

    .line 29
    if-eqz v5, :cond_e

    .line 31
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    .line 34
    move-result-object v5

    .line 35
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_e

    .line 41
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    .line 44
    move-result-object v4

    .line 45
    const-wide v5, -0xc28b9b8041L

    .line 50
    invoke-static {v5, v6}, Ls70;->x(J)Ljava/lang/String;

    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 57
    move-result v5

    .line 58
    if-nez v5, :cond_4d

    .line 60
    const-wide v5, -0xc68b9b8041L

    .line 65
    invoke-static {v5, v6}, Ls70;->x(J)Ljava/lang/String;

    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 72
    move-result v4
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_48} :catch_4b

    .line 73
    if-eqz v4, :cond_e

    .line 75
    goto :goto_4d

    .line 76
    :catch_4b
    nop

    .line 77
    goto :goto_4e

    .line 78
    :cond_4d
    :goto_4d
    const/4 v0, 0x1

    .line 79
    :cond_4e
    :goto_4e
    if-eqz v0, :cond_5e

    .line 81
    new-instance v1, Ljava/lang/Thread;

    .line 83
    new-instance v2, Ltq;

    .line 85
    const/4 v3, 0x3

    .line 86
    invoke-direct {v2, p0, v3}, Ltq;-><init>(Lcom/cheatbox/LoginActivity;I)V

    .line 89
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 92
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 95
    :cond_5e
    return v0
.end method

.method private calculateCRC(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1
    if-eqz p1, :cond_56

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_56

    .line 10
    :cond_9
    new-instance v0, Ljava/util/zip/CRC32;

    .line 12
    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 15
    const/16 v1, 0x1000

    .line 17
    new-array v1, v1, [B

    .line 19
    :try_start_12
    new-instance v2, Ljava/io/FileInputStream;

    .line 21
    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_4c

    .line 24
    :goto_17
    :try_start_17
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    .line 27
    move-result p1

    .line 28
    const/4 v3, -0x1

    .line 29
    const/4 v4, 0x0

    .line 30
    if-eq p1, v3, :cond_25

    .line 32
    invoke-virtual {v0, v1, v4, p1}, Ljava/util/zip/CRC32;->update([BII)V

    .line 35
    goto :goto_17

    .line 36
    :catchall_23
    move-exception p1

    .line 37
    goto :goto_43

    .line 38
    :cond_25
    const-wide v5, -0x3cc8b9b8041L

    .line 43
    invoke-static {v5, v6}, Ls70;->x(J)Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    .line 50
    move-result-wide v0

    .line 51
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    move-result-object v0

    .line 55
    const/4 v1, 0x1

    .line 56
    new-array v1, v1, [Ljava/lang/Object;

    .line 58
    aput-object v0, v1, v4

    .line 60
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    move-result-object p1
    :try_end_3f
    .catchall {:try_start_17 .. :try_end_3f} :catchall_23

    .line 64
    :try_start_3f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_4c

    .line 67
    return-object p1

    .line 68
    :goto_43
    :try_start_43
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    .line 71
    goto :goto_4b

    .line 72
    :catchall_47
    move-exception v0

    .line 73
    :try_start_48
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 76
    :goto_4b
    throw p1
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4c} :catch_4c

    .line 77
    :catch_4c
    const-wide v0, -0x3d18b9b8041L

    .line 82
    invoke-static {v0, v1}, Ls70;->x(J)Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    return-object p1

    .line 87
    :cond_56
    :goto_56
    const-wide v0, -0x3c48b9b8041L

    .line 92
    invoke-static {v0, v1}, Ls70;->x(J)Ljava/lang/String;

    .line 95
    move-result-object p1

    .line 96
    return-object p1
.end method

.method private checkPermission()V
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1e

    .line 5
    if-lt v0, v1, :cond_a

    .line 7
    invoke-direct {p0}, Lcom/cheatbox/LoginActivity;->handlePermissionR()V

    .line 10
    return-void

    .line 11
    :cond_a
    invoke-direct {p0}, Lcom/cheatbox/LoginActivity;->handlePermissionLegacy()V

    .line 14
    return-void
.end method

.method public static synthetic d(Lcom/cheatbox/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cheatbox/LoginActivity;->lambda$login$6(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method private dismissDialog()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/cheatbox/LoginActivity;->progressDialog:Landroid/app/AlertDialog;

    .line 3
    if-eqz v0, :cond_12

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_12

    .line 11
    iget-object v0, p0, Lcom/cheatbox/LoginActivity;->progressDialog:Landroid/app/AlertDialog;

    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/cheatbox/LoginActivity;->progressDialog:Landroid/app/AlertDialog;

    .line 19
    :cond_12
    return-void
.end method

.method public static synthetic e(Lcom/cheatbox/LoginActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/cheatbox/LoginActivity;->lambda$VPNCheck$3()V

    .line 4
    return-void
.end method

.method public static synthetic f(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/cheatbox/LoginActivity;->lambda$showError$9(Landroid/content/DialogInterface;I)V

    .line 4
    return-void
.end method

.method public static synthetic g(Lcom/cheatbox/LoginActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/cheatbox/LoginActivity;->lambda$handlePermissionLegacy$11()V

    .line 4
    return-void
.end method

.method public static synthetic h(Landroid/widget/ProgressBar;Landroid/widget/TextView;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/cheatbox/LoginActivity;->lambda$login$5(Landroid/widget/ProgressBar;Landroid/widget/TextView;)V

    .line 4
    return-void
.end method

.method private handlePermissionLegacy()V
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1a

    .line 5
    if-lt v0, v1, :cond_21

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lv;->x(Landroid/content/pm/PackageManager;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_17

    .line 17
    invoke-static {p0}, Lw;->v(Lcom/cheatbox/LoginActivity;)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_17

    .line 23
    goto :goto_21

    .line 24
    :cond_17
    new-instance v0, Ltq;

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, p0, v1}, Ltq;-><init>(Lcom/cheatbox/LoginActivity;I)V

    .line 30
    invoke-direct {p0, v0}, Lcom/cheatbox/LoginActivity;->showPermissionDialog(Ljava/lang/Runnable;)V

    .line 33
    return-void

    .line 34
    :cond_21
    :goto_21
    invoke-direct {p0}, Lcom/cheatbox/LoginActivity;->requestStorage()V

    .line 37
    return-void
.end method

.method private handlePermissionR()V
    .registers 3

    .line 1
    invoke-static {}, Laa;->s()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1a

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lv;->x(Landroid/content/pm/PackageManager;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1a

    .line 17
    invoke-static {p0}, Lw;->v(Lcom/cheatbox/LoginActivity;)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1a

    .line 23
    invoke-direct {p0}, Lcom/cheatbox/LoginActivity;->requestRuntimePermissions()V

    .line 26
    return-void

    .line 27
    :cond_1a
    new-instance v0, Ltq;

    .line 29
    const/4 v1, 0x2

    .line 30
    invoke-direct {v0, p0, v1}, Ltq;-><init>(Lcom/cheatbox/LoginActivity;I)V

    .line 33
    invoke-direct {p0, v0}, Lcom/cheatbox/LoginActivity;->showPermissionDialog(Ljava/lang/Runnable;)V

    .line 36
    return-void
.end method

.method private hasAudio()Z
    .registers 3

    .line 1
    const-wide v0, -0x3a48b9b8041L

    .line 6
    invoke-static {v0, v1}, Ls70;->x(J)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {p0, v0}, Ltj0;->c(Lxi;Ljava/lang/String;)I

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_11

    .line 16
    const/4 v0, 0x1

    .line 17
    return v0

    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method private hasNotification()Z
    .registers 3

    .line 1
    const-wide v0, -0x37e8b9b8041L

    .line 6
    invoke-static {v0, v1}, Ls70;->x(J)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {p0, v0}, Ltj0;->c(Lxi;Ljava/lang/String;)I

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_11

    .line 16
    const/4 v0, 0x1

    .line 17
    return v0

    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method private hasStorage()Z
    .registers 3

    .line 1
    const-wide v0, -0x32b8b9b8041L

    .line 6
    invoke-static {v0, v1}, Ls70;->x(J)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {p0, v0}, Ltj0;->c(Lxi;Ljava/lang/String;)I

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1e

    .line 16
    const-wide v0, -0x3548b9b8041L

    .line 21
    invoke-static {v0, v1}, Ls70;->x(J)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-static {p0, v0}, Ltj0;->c(Lxi;Ljava/lang/String;)I

    .line 28
    move-result v0

    .line 29
    .line 31
    const/4 v0, 0x1

    .line 32
    return v0

    .line 33
    :cond_1e
    const/4 v0, 0x0

    .line 34
    return v0
.end method

.method public static synthetic i(Lcom/cheatbox/LoginActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/cheatbox/LoginActivity;->lambda$VPNCheck$4()V

    .line 4
    return-void
.end method

.method public static synthetic j(Lcom/cheatbox/LoginActivity;Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/cheatbox/LoginActivity;->lambda$setupClipboardPaste$0(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method public static synthetic k(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cheatbox/LoginActivity;->lambda$showPermissionDialog$12(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    .line 4
    return-void
.end method

.method public static synthetic l(Lcom/cheatbox/LoginActivity;Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/cheatbox/LoginActivity;->lambda$setupLoginButton$1(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method private synthetic lambda$VPNCheck$3()V
    .registers 3

    .line 1
    sget v0, Lgy;->login_success_full:I

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 15
    return-void
.end method

.method private synthetic lambda$VPNCheck$4()V
    .registers 3

    .line 1
    const-wide/16 v0, 0xbb8

    .line 3
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_e

    .line 6
    new-instance v0, Ltq;

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, p0, v1}, Ltq;-><init>(Lcom/cheatbox/LoginActivity;I)V

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 15
    :catch_e
    return-void
.end method

.method private synthetic lambda$handlePermissionLegacy$11()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/cheatbox/LoginActivity;->openSettingsLegacy()V

    .line 4
    return-void
.end method

.method private synthetic lambda$handlePermissionR$10()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/cheatbox/LoginActivity;->openSettingsR()V

    .line 4
    return-void
.end method

.method private static synthetic lambda$login$5(Landroid/widget/ProgressBar;Landroid/widget/TextView;)V
    .registers 4

    .line 1
    if-eqz p0, :cond_7

    .line 3
    const/16 v0, 0x64

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 8
    :cond_7
    if-eqz p1, :cond_15

    .line 10
    const-wide v0, -0x3f18b9b8041L

    .line 15
    invoke-static {v0, v1}, Ls70;->x(J)Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    :cond_15
    return-void
.end method

.method private synthetic lambda$login$6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/cheatbox/LoginActivity;->dismissDialog()V

    .line 4
    if-eqz p1, :cond_10

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_c

    .line 12
    goto :goto_10

    .line 13
    :cond_c
    invoke-direct {p0, p2}, Lcom/cheatbox/LoginActivity;->saveAndProceed(Ljava/lang/String;)V

    .line 16
    return-void

    .line 17
    :cond_10
    :goto_10
    if-eqz p1, :cond_13

    .line 19
    goto :goto_19

    .line 20
    :cond_13
    sget p1, Lgy;->invalid_key:I

    .line 22
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    :goto_19
    invoke-direct {p0, p1}, Lcom/cheatbox/LoginActivity;->showError(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method private synthetic lambda$login$7(Ljava/lang/Exception;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/cheatbox/LoginActivity;->dismissDialog()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    const-wide v1, -0x3d98b9b8041L

    .line 14
    invoke-static {v1, v2}, Ls70;->x(J)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    invoke-direct {p0, p1}, Lcom/cheatbox/LoginActivity;->showError(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method private synthetic lambda$login$8(Landroid/widget/ProgressBar;Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_2
    filled-new-array {v0}, [I

    .line 6
    move-result-object v4

    .line 7
    new-instance v2, Lu7;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_33

    .line 9
    const/4 v7, 0x1

    .line 10
    move-object v3, p0

    .line 11
    move-object v5, p1

    .line 12
    move-object v6, p2

    .line 13
    :try_start_c
    invoke-direct/range {v2 .. v7}, Lu7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 16
    iget-object p1, v3, Lcom/cheatbox/LoginActivity;->progressHandler:Landroid/os/Handler;

    .line 18
    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    invoke-static {p0, p3}, Lcom/cheatbox/Native;->Check(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    iget-object p2, v3, Lcom/cheatbox/LoginActivity;->progressHandler:Landroid/os/Handler;

    .line 27
    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 30
    new-instance p2, Lz1;

    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-direct {p2, v5, v0, v6}, Lz1;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 36
    invoke-virtual {p0, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 39
    new-instance p2, Lmf;

    .line 41
    const/4 v0, 0x1

    .line 42
    invoke-direct {p2, p0, p1, p3, v0}, Lmf;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 45
    invoke-virtual {p0, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2f} :catch_30

    .line 48
    return-void

    .line 49
    :catch_30
    move-exception v0

    .line 50
    :goto_31
    move-object p1, v0

    .line 51
    goto :goto_36

    .line 52
    :catch_33
    move-exception v0

    .line 53
    move-object v3, p0

    .line 54
    goto :goto_31

    .line 55
    :goto_36
    iget-object p2, v3, Lcom/cheatbox/LoginActivity;->progressHandler:Landroid/os/Handler;

    .line 57
    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 60
    new-instance p2, Lz1;

    .line 62
    const/4 p3, 0x2

    .line 63
    invoke-direct {p2, p0, p3, p1}, Lz1;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 66
    invoke-virtual {p0, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 69
    return-void
.end method

.method private synthetic lambda$setupClipboardPaste$0(Landroid/view/View;)V
    .registers 4

    .line 1
    const-wide v0, -0x42a8b9b8041L

    .line 6
    invoke-static {v0, v1}, Ls70;->x(J)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/content/ClipboardManager;

    .line 16
    if-eqz p1, :cond_44

    .line 18
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getText()Ljava/lang/CharSequence;

    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_36

    .line 24
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x5

    .line 29
    if-le v0, v1, :cond_36

    .line 31
    iget-object v0, p0, Lcom/cheatbox/LoginActivity;->emailField:Lcom/google/android/material/textfield/TextInputEditText;

    .line 33
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    sget p1, Lgy;->key_pasted_from_clipboard:I

    .line 42
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 54
    return-void

    .line 55
    :cond_36
    sget p1, Lgy;->invalid_key:I

    .line 57
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    const/4 v0, 0x1

    .line 62
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 69
    :cond_44
    return-void
.end method

.method private synthetic lambda$setupLoginButton$1(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/cheatbox/LoginActivity;->emailField:Lcom/google/android/material/textfield/TextInputEditText;

    .line 3
    invoke-virtual {p1}, Lv2;->getText()Landroid/text/Editable;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_13

    .line 9
    iget-object p1, p0, Lcom/cheatbox/LoginActivity;->emailField:Lcom/google/android/material/textfield/TextInputEditText;

    .line 11
    invoke-virtual {p1}, Lv2;->getText()Landroid/text/Editable;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    goto :goto_1c

    .line 20
    :cond_13
    const-wide v0, -0x4298b9b8041L

    .line 25
    invoke-static {v0, v1}, Ls70;->x(J)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    :goto_1c
    invoke-direct {p0}, Lcom/cheatbox/LoginActivity;->VPNCheck()Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_23

    .line 35
    return-void

    .line 36
    :cond_23
    invoke-direct {p0, p1}, Lcom/cheatbox/LoginActivity;->login(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method private lambda$setupTelegramButton$2(Landroid/view/View;)V
    .registers 7

    .line 1
    iget-object p1, p0, Lcom/cheatbox/LoginActivity;->m_Prefs:Lmx;

    .line 3
    const-wide v0, -0x3f68b9b8041L

    .line 8
    invoke-static {v0, v1}, Ls70;->x(J)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    const-wide v1, -0x3ff8b9b8041L

    .line 17
    invoke-static {v1, v2}, Ls70;->x(J)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    iget-object p1, p1, Lmx;->a:Landroid/content/SharedPreferences;

    .line 23
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    const/4 v0, 0x0

    .line 28
    if-eqz p1, :cond_54

    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_54

    .line 36
    :try_start_23
    new-instance v1, Landroid/content/Intent;

    .line 38
    const-wide v2, -0x4008b9b8041L

    .line 43
    invoke-static {v2, v3}, Ls70;->x(J)Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    const-wide v3, -0x41b8b9b8041L

    .line 52
    invoke-static {v3, v4}, Ls70;->x(J)Ljava/lang/String;

    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 63
    move-result-object p1

    .line 64
    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 67
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_45} :catch_46

    .line 70
    return-void

    .line 71
    :catch_46
    sget p1, Lgy;->invalid_or_empty_telegram_url:I

    .line 73
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 84
    return-void

    .line 85
    :cond_54
    sget p1, Lgy;->invalid_or_empty_telegram_url:I

    .line 87
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 91
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 98
    return-void
.end method

.method private static synthetic lambda$showError$9(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 1
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    .line 4
    return-void
.end method

.method private static synthetic lambda$showPermissionDialog$12(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 7
    move-result-object p0

    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/Runtime;->exit(I)V

    .line 12
    return-void
.end method

.method private loadSavedData()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/cheatbox/LoginActivity;->m_Prefs:Lmx;

    .line 3
    const-wide v1, -0xaf8b9b8041L

    .line 8
    invoke-static {v1, v2}, Ls70;->x(J)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    iget-object v0, v0, Lmx;->a:Landroid/content/SharedPreferences;

    .line 14
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_3a

    .line 20
    iget-object v0, p0, Lcom/cheatbox/LoginActivity;->m_Prefs:Lmx;

    .line 22
    const-wide v1, -0xb88b9b8041L

    .line 27
    invoke-static {v1, v2}, Ls70;->x(J)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    const-wide v2, -0xc18b9b8041L

    .line 36
    invoke-static {v2, v3}, Ls70;->x(J)Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    iget-object v0, v0, Lmx;->a:Landroid/content/SharedPreferences;

    .line 42
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_3a

    .line 52
    iget-object v1, p0, Lcom/cheatbox/LoginActivity;->emailField:Lcom/google/android/material/textfield/TextInputEditText;

    .line 54
    if-eqz v1, :cond_3a

    .line 56
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :cond_3a
    return-void
.end method

.method private login(Ljava/lang/String;)V
    .registers 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_cc

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x5

    .line 16
    if-ge v0, v1, :cond_13

    .line 18
    goto/16 :goto_cc

    .line 20
    :cond_13
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 23
    move-result-object v0

    .line 24
    const v1, 0x7f0b002e

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    move-result-object v0

    .line 32
    const v1, 0x7f080150

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroid/widget/TextView;

    .line 41
    if-eqz v1, :cond_33

    .line 43
    sget v2, Lgy;->loggingin:I

    .line 45
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :cond_33
    iget-object v1, p0, Lcom/cheatbox/LoginActivity;->m_Prefs:Lmx;

    .line 54
    const-wide v2, -0xca8b9b8041L

    .line 59
    invoke-static {v2, v3}, Ls70;->x(J)Ljava/lang/String;

    .line 62
    move-result-object v2

    .line 63
    iget-object v1, v1, Lmx;->a:Landroid/content/SharedPreferences;

    .line 65
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_7c

    .line 71
    const v1, 0x7f08014e

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Landroid/widget/ImageView;

    .line 80
    iget-object v2, p0, Lcom/cheatbox/LoginActivity;->m_Prefs:Lmx;

    .line 82
    const-wide v3, -0xcf8b9b8041L

    .line 87
    invoke-static {v3, v4}, Ls70;->x(J)Ljava/lang/String;

    .line 90
    move-result-object v3

    .line 91
    const-wide v4, -0xd48b9b8041L

    .line 96
    invoke-static {v4, v5}, Ls70;->x(J)Ljava/lang/String;

    .line 99
    move-result-object v4

    .line 100
    iget-object v2, v2, Lmx;->a:Landroid/content/SharedPreferences;

    .line 102
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    move-result-object v2

    .line 106
    if-eqz v1, :cond_7c

    .line 108
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 111
    move-result v3

    .line 112
    if-nez v3, :cond_7c

    .line 114
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v3, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/f;

    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v2, v1}, Lcom/squareup/picasso/f;->a(Landroid/widget/ImageView;)V

    .line 125
    :cond_7c
    const v1, 0x7f08014b

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    move-result-object v1

    .line 132
    check-cast v1, Landroid/widget/ProgressBar;

    .line 134
    const v2, 0x7f08014f

    .line 137
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 140
    move-result-object v2

    .line 141
    check-cast v2, Landroid/widget/TextView;

    .line 143
    const/4 v3, 0x0

    .line 144
    if-eqz v1, :cond_97

    .line 146
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 149
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 152
    :cond_97
    if-eqz v2, :cond_a5

    .line 154
    const-wide v4, -0xd58b9b8041L

    .line 159
    invoke-static {v4, v5}, Ls70;->x(J)Ljava/lang/String;

    .line 162
    move-result-object v4

    .line 163
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :cond_a5
    new-instance v4, Landroid/app/AlertDialog$Builder;

    .line 168
    const v5, 0x7f100470

    .line 171
    invoke-direct {v4, p0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 174
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 185
    move-result-object v0

    .line 186
    iput-object v0, p0, Lcom/cheatbox/LoginActivity;->progressDialog:Landroid/app/AlertDialog;

    .line 188
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 191
    new-instance v0, Ljava/lang/Thread;

    .line 193
    new-instance v3, Lwq;

    .line 195
    invoke-direct {v3, p0, v1, v2, p1}, Lwq;-><init>(Lcom/cheatbox/LoginActivity;Landroid/widget/ProgressBar;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 198
    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 201
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 204
    return-void

    .line 205
    :cond_cc
    :goto_cc
    sget p1, Lgy;->invalid_key:I

    .line 207
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 210
    move-result-object p1

    .line 211
    invoke-direct {p0, p1}, Lcom/cheatbox/LoginActivity;->showError(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public static synthetic m(Lcom/cheatbox/LoginActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/cheatbox/LoginActivity;->lambda$handlePermissionR$10()V

    .line 4
    return-void
.end method

.method public static synthetic n(Lcom/cheatbox/LoginActivity;Landroid/widget/ProgressBar;Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/cheatbox/LoginActivity;->lambda$login$8(Landroid/widget/ProgressBar;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic o(Lcom/cheatbox/LoginActivity;Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/cheatbox/LoginActivity;->lambda$setupTelegramButton$2(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method private openSettingsLegacy()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0}, Lw;->v(Lcom/cheatbox/LoginActivity;)Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_3b

    .line 11
    new-instance v1, Landroid/content/Intent;

    .line 13
    const-wide v2, -0x2bb8b9b8041L

    .line 18
    invoke-static {v2, v3}, Ls70;->x(J)Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    const-wide v3, -0x2ed8b9b8041L

    .line 35
    invoke-static {v3, v4}, Ls70;->x(J)Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 60
    :cond_3b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 63
    move-result-object v1

    .line 64
    invoke-static {v1}, Lv;->x(Landroid/content/pm/PackageManager;)Z

    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_76

    .line 70
    new-instance v1, Landroid/content/Intent;

    .line 72
    const-wide v2, -0x2f68b9b8041L

    .line 77
    invoke-static {v2, v3}, Ls70;->x(J)Ljava/lang/String;

    .line 80
    move-result-object v2

    .line 81
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    .line 86
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    const-wide v3, -0x3228b9b8041L

    .line 94
    invoke-static {v3, v4}, Ls70;->x(J)Ljava/lang/String;

    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v0

    .line 108
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 119
    :cond_76
    return-void
.end method

.method private openSettingsR()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Laa;->s()Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_2d

    .line 11
    new-instance v1, Landroid/content/Intent;

    .line 13
    const-wide v2, -0x20b8b9b8041L

    .line 18
    invoke-static {v2, v3}, Ls70;->x(J)Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    const-wide v2, -0x2438b9b8041L

    .line 30
    invoke-static {v2, v3}, Ls70;->x(J)Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-static {v2, v0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 46
    :cond_2d
    invoke-static {p0}, Lw;->v(Lcom/cheatbox/LoginActivity;)Z

    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_64

    .line 52
    new-instance v1, Landroid/content/Intent;

    .line 54
    const-wide v2, -0x24b8b9b8041L

    .line 59
    invoke-static {v2, v3}, Ls70;->x(J)Ljava/lang/String;

    .line 62
    move-result-object v2

    .line 63
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    const-wide v3, -0x27d8b9b8041L

    .line 76
    invoke-static {v3, v4}, Ls70;->x(J)Ljava/lang/String;

    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v2

    .line 90
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 101
    :cond_64
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 104
    move-result-object v1

    .line 105
    invoke-static {v1}, Lv;->x(Landroid/content/pm/PackageManager;)Z

    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_9f

    .line 111
    new-instance v1, Landroid/content/Intent;

    .line 113
    const-wide v2, -0x2868b9b8041L

    .line 118
    invoke-static {v2, v3}, Ls70;->x(J)Ljava/lang/String;

    .line 121
    move-result-object v2

    .line 122
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    .line 127
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    const-wide v3, -0x2b28b9b8041L

    .line 135
    invoke-static {v3, v4}, Ls70;->x(J)Ljava/lang/String;

    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object v0

    .line 149
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 160
    :cond_9f
    return-void
.end method

.method public static synthetic p(Lcom/cheatbox/LoginActivity;Ljava/lang/Exception;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/cheatbox/LoginActivity;->lambda$login$7(Ljava/lang/Exception;)V

    .line 4
    return-void
.end method

.method public static bridge synthetic q(Lcom/cheatbox/LoginActivity;)Landroid/app/AlertDialog;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cheatbox/LoginActivity;->progressDialog:Landroid/app/AlertDialog;

    .line 3
    return-object p0
.end method

.method public static bridge synthetic r(Lcom/cheatbox/LoginActivity;)Landroid/os/Handler;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cheatbox/LoginActivity;->progressHandler:Landroid/os/Handler;

    .line 3
    return-object p0
.end method

.method private requestRuntimePermissions()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/cheatbox/LoginActivity;->hasStorage()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_21

    .line 7
    const-wide v0, -0x11f8b9b8041L

    .line 12
    invoke-static {v0, v1}, Ls70;->x(J)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-wide v1, -0x1488b9b8041L

    .line 21
    invoke-static {v1, v2}, Ls70;->x(J)Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    const/16 v1, 0x65

    .line 31
    invoke-static {p0, v0, v1}, Ltj0;->ab(Lxi;[Ljava/lang/String;I)V

    .line 34
    :cond_21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 36
    const/16 v1, 0x21

    .line 38
    if-lt v0, v1, :cond_3e

    .line 40
    invoke-direct {p0}, Lcom/cheatbox/LoginActivity;->hasNotification()Z

    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_3e

    .line 46
    const-wide v0, -0x1728b9b8041L

    .line 51
    invoke-static {v0, v1}, Ls70;->x(J)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    filled-new-array {v0}, [Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    const/4 v1, 0x1

    .line 60
    invoke-static {p0, v0, v1}, Ltj0;->ab(Lxi;[Ljava/lang/String;I)V

    .line 63
    :cond_3e
    invoke-direct {p0}, Lcom/cheatbox/LoginActivity;->hasAudio()Z

    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_56

    .line 69
    const-wide v0, -0x1988b9b8041L

    .line 74
    invoke-static {v0, v1}, Ls70;->x(J)Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 78
    filled-new-array {v0}, [Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    const/16 v1, 0x66

    .line 84
    invoke-static {p0, v0, v1}, Ltj0;->ab(Lxi;[Ljava/lang/String;I)V

    .line 87
    :cond_56
    return-void
.end method

.method private requestStorage()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/cheatbox/LoginActivity;->hasStorage()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_21

    .line 7
    const-wide v0, -0x1b88b9b8041L

    .line 12
    invoke-static {v0, v1}, Ls70;->x(J)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-wide v1, -0x1e18b9b8041L

    .line 21
    invoke-static {v1, v2}, Ls70;->x(J)Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    const/16 v1, 0x65

    .line 31
    invoke-static {p0, v0, v1}, Ltj0;->ab(Lxi;[Ljava/lang/String;I)V

    .line 34
    :cond_21
    return-void
.end method

.method private saveAndProceed(Ljava/lang/String;)V
    .registers 6

    .line 1
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/cheatbox/LoginActivity;->m_Prefs:Lmx;

    .line 11
    const-wide v2, -0xd88b9b8041L

    .line 16
    invoke-static {v2, v3}, Ls70;->x(J)Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2, v0}, Lmx;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {v0}, Lcom/cheatbox/Native;->SetSessionNonce(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/cheatbox/LoginActivity;->m_Prefs:Lmx;

    .line 28
    const-wide v1, -0xe68b9b8041L

    .line 33
    invoke-static {v1, v2}, Ls70;->x(J)Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    invoke-static {}, Lcom/cheatbox/Native;->ResellerLOGO()Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v1, v2}, Lmx;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/cheatbox/LoginActivity;->m_Prefs:Lmx;

    .line 46
    const-wide v1, -0xeb8b9b8041L

    .line 51
    invoke-static {v1, v2}, Ls70;->x(J)Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    invoke-static {}, Lcom/cheatbox/Native;->ResellerNAME()Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v0, v1, v2}, Lmx;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/cheatbox/LoginActivity;->m_Prefs:Lmx;

    .line 64
    const-wide v1, -0xf08b9b8041L

    .line 69
    invoke-static {v1, v2}, Ls70;->x(J)Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    invoke-static {}, Lcom/cheatbox/Native;->urlTg()Ljava/lang/String;

    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v0, v1, v2}, Lmx;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/cheatbox/LoginActivity;->m_Prefs:Lmx;

    .line 82
    const-wide v1, -0xf98b9b8041L

    .line 87
    invoke-static {v1, v2}, Ls70;->x(J)Ljava/lang/String;

    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v1, p1}, Lmx;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance p1, Landroid/content/Intent;

    .line 96
    const-class v0, Lcom/cheatbox/MainActivity;

    .line 98
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6a} :catch_6b

    .line 107
    return-void

    .line 108
    :catch_6b
    move-exception p1

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    .line 111
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    const-wide v1, -0x1028b9b8041L

    .line 119
    invoke-static {v1, v2}, Ls70;->x(J)Ljava/lang/String;

    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object p1

    .line 137
    invoke-direct {p0, p1}, Lcom/cheatbox/LoginActivity;->showError(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method private setupBannerLogo()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/cheatbox/LoginActivity;->m_Prefs:Lmx;

    .line 3
    const-wide v1, -0xa48b9b8041L

    .line 8
    invoke-static {v1, v2}, Ls70;->x(J)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    iget-object v0, v0, Lmx;->a:Landroid/content/SharedPreferences;

    .line 14
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_49

    .line 20
    const v0, 0x7f080052

    .line 23
    invoke-virtual {p0, v0}, Lo1;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/ImageView;

    .line 29
    iget-object v1, p0, Lcom/cheatbox/LoginActivity;->m_Prefs:Lmx;

    .line 31
    const-wide v2, -0xa98b9b8041L

    .line 36
    invoke-static {v2, v3}, Ls70;->x(J)Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    const-wide v3, -0xae8b9b8041L

    .line 45
    invoke-static {v3, v4}, Ls70;->x(J)Ljava/lang/String;

    .line 48
    move-result-object v3

    .line 49
    iget-object v1, v1, Lmx;->a:Landroid/content/SharedPreferences;

    .line 51
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_49

    .line 61
    if-eqz v0, :cond_49

    .line 63
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/f;

    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1, v0}, Lcom/squareup/picasso/f;->a(Landroid/widget/ImageView;)V

    .line 74
    :cond_49
    return-void
.end method

.method private setupClipboardPaste()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/cheatbox/LoginActivity;->emailLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    new-instance v1, Luq;

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, p0, v2}, Luq;-><init>(Lcom/cheatbox/LoginActivity;I)V

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    :cond_d
    return-void
.end method

.method private setupLoginButton()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/cheatbox/LoginActivity;->loginButton:Lcom/google/android/material/button/MaterialButton;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    new-instance v1, Luq;

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, v2}, Luq;-><init>(Lcom/cheatbox/LoginActivity;I)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    :cond_d
    return-void
.end method

.method private setupTelegramButton()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/cheatbox/LoginActivity;->telegramLink:Landroid/widget/TextView;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    new-instance v1, Luq;

    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-direct {v1, p0, v2}, Luq;-><init>(Lcom/cheatbox/LoginActivity;I)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    :cond_d
    return-void
.end method

.method private setupUI()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/cheatbox/LoginActivity;->setupBannerLogo()V

    .line 4
    invoke-direct {p0}, Lcom/cheatbox/LoginActivity;->setupClipboardPaste()V

    .line 7
    invoke-direct {p0}, Lcom/cheatbox/LoginActivity;->setupLoginButton()V

    .line 10
    invoke-direct {p0}, Lcom/cheatbox/LoginActivity;->setupTelegramButton()V

    .line 13
    invoke-direct {p0}, Lcom/cheatbox/LoginActivity;->setupVersionInfo()V

    .line 16
    return-void
.end method

.method private setupVersionInfo()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/cheatbox/LoginActivity;->versionLabel:Landroid/widget/TextView;

    .line 3
    if-eqz v0, :cond_3e

    .line 5
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 17
    move-result-object v3

    .line 18
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 23
    move-result-object v0

    .line 24
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 26
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 28
    invoke-direct {p0, v0}, Lcom/cheatbox/LoginActivity;->calculateCRC(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/cheatbox/LoginActivity;->versionLabel:Landroid/widget/TextView;

    .line 34
    sget v4, Lgy;->version_template:I

    .line 36
    const/4 v5, 0x2

    .line 37
    new-array v5, v5, [Ljava/lang/Object;

    .line 39
    aput-object v3, v5, v2

    .line 41
    const/4 v2, 0x1

    .line 42
    aput-object v0, v5, v2

    .line 44
    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_32} :catch_33

    .line 51
    return-void

    .line 52
    :catch_33
    iget-object v0, p0, Lcom/cheatbox/LoginActivity;->versionLabel:Landroid/widget/TextView;

    .line 54
    sget v1, Lgy;->version_unknown_crc_unknown:I

    .line 56
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :cond_3e
    return-void
.end method

.method private showError(Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 3
    const v1, 0x7f100228

    .line 6
    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 9
    sget v1, Lgy;->error:I

    .line 11
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 22
    move-result-object p1

    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 27
    move-result-object p1

    .line 28
    sget v0, Lgy;->ok:I

    .line 30
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Lvq;

    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-direct {v1, v2}, Lvq;-><init>(I)V

    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 47
    return-void
.end method

.method private showPermissionDialog(Ljava/lang/Runnable;)V
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    sget v1, Lgy;->enable_permission:I

    .line 8
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-wide v1, -0x11d8b9b8041L

    .line 20
    invoke-static {v1, v2}, Ls70;->x(J)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 30
    move-result-object v1

    .line 31
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 48
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 50
    const v2, 0x7f100228

    .line 53
    invoke-direct {v0, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 56
    sget v2, Lgy;->grant_permission:I

    .line 58
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 65
    move-result-object v0

    .line 66
    sget v2, Lgy;->grant_permission_msg:I

    .line 68
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 79
    move-result-object v0

    .line 80
    sget v1, Lgy;->ok:I

    .line 82
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 85
    move-result-object v1

    .line 86
    new-instance v2, Lsq;

    .line 88
    const/4 v3, 0x0

    .line 89
    invoke-direct {v2, v3, p1}, Lsq;-><init>(ILjava/lang/Object;)V

    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 99
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lxi;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const p1, 0x7f0b001c

    .line 7
    invoke-virtual {p0, p1}, Lo1;->setContentView(I)V

    .line 10
    sget-object p1, Lmx;->b:Lmx;

    .line 12
    if-nez p1, :cond_14

    .line 14
    new-instance p1, Lmx;

    .line 16
    invoke-direct {p1, p0}, Lmx;-><init>(Lo1;)V

    .line 19
    sput-object p1, Lmx;->b:Lmx;

    .line 21
    :cond_14
    sget-object p1, Lmx;->b:Lmx;

    .line 23
    iput-object p1, p0, Lcom/cheatbox/LoginActivity;->m_Prefs:Lmx;

    .line 25
    new-instance p1, Landroid/os/Handler;

    .line 27
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 30
    move-result-object v0

    .line 31
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 34
    iput-object p1, p0, Lcom/cheatbox/LoginActivity;->progressHandler:Landroid/os/Handler;

    .line 36
    const p1, 0x7f08009b

    .line 39
    invoke-virtual {p0, p1}, Lo1;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    .line 45
    iput-object p1, p0, Lcom/cheatbox/LoginActivity;->emailField:Lcom/google/android/material/textfield/TextInputEditText;

    .line 47
    const p1, 0x7f08009c

    .line 50
    invoke-virtual {p0, p1}, Lo1;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 56
    iput-object p1, p0, Lcom/cheatbox/LoginActivity;->emailLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 58
    const p1, 0x7f0800de

    .line 61
    invoke-virtual {p0, p1}, Lo1;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 67
    iput-object p1, p0, Lcom/cheatbox/LoginActivity;->loginButton:Lcom/google/android/material/button/MaterialButton;

    .line 69
    const p1, 0x7f0801a3

    .line 72
    invoke-virtual {p0, p1}, Lo1;->findViewById(I)Landroid/view/View;

    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Landroid/widget/TextView;

    .line 78
    iput-object p1, p0, Lcom/cheatbox/LoginActivity;->telegramLink:Landroid/widget/TextView;

    .line 80
    const p1, 0x7f0801cc

    .line 83
    invoke-virtual {p0, p1}, Lo1;->findViewById(I)Landroid/view/View;

    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Landroid/widget/TextView;

    .line 89
    iput-object p1, p0, Lcom/cheatbox/LoginActivity;->versionLabel:Landroid/widget/TextView;

    .line 91
    invoke-direct {p0}, Lcom/cheatbox/LoginActivity;->setupUI()V

    .line 94
    invoke-direct {p0}, Lcom/cheatbox/LoginActivity;->loadSavedData()V

    .line 97
    invoke-direct {p0}, Lcom/cheatbox/LoginActivity;->checkPermission()V

    .line 100
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    invoke-super {p0}, Lo1;->onDestroy()V

    .line 4
    iget-object v0, p0, Lcom/cheatbox/LoginActivity;->progressHandler:Landroid/os/Handler;

    .line 6
    if-eqz v0, :cond_b

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 12
    :cond_b
    invoke-direct {p0}, Lcom/cheatbox/LoginActivity;->dismissDialog()V

    .line 15
    return-void
.end method
