.class public Lcom/cheatbox/Native;
.super Ljava/lang/Object;
.source "r8-map-id-a36d9ba84d8b67cc1ea5a39e1858eb565e4449ae1db1cf76728fba9d9d905344"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    const-wide v0, -0xaa18b9b8041L

    .line 6
    invoke-static {v0, v1}, Ls70;->x(J)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 13
    const-wide v0, -0xaaa8b9b8041L

    .line 18
    invoke-static {v0, v1}, Ls70;->x(J)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    const-wide v1, -0xab58b9b8041L

    .line 27
    invoke-static {v1, v2}, Ls70;->x(J)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    const-wide v2, -0xabd8b9b8041L

    .line 36
    invoke-static {v2, v3}, Ls70;->x(J)Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    const-wide v3, -0xac68b9b8041L

    .line 45
    invoke-static {v3, v4}, Ls70;->x(J)Ljava/lang/String;

    .line 48
    move-result-object v3

    .line 49
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lcom/cheatbox/Native;->a:[Ljava/lang/String;

    .line 55
    return-void
.end method

.method public static native AppVersion()Ljava/lang/String;
.end method

.method public static native Check(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native EXPIRY()Ljava/lang/String;
.end method

.method public static native GameVersion()Ljava/lang/String;
.end method

.method public static native ResellerLOGO()Ljava/lang/String;
.end method

.method public static native ResellerNAME()Ljava/lang/String;
.end method

.method public static native SetSessionNonce(Ljava/lang/String;)V
.end method

.method public static native UpdateURL()Ljava/lang/String;
.end method

.method public static native UpdateVersion()Ljava/lang/String;
.end method

.method public static native VerifySession(Ljava/lang/String;)Z
.end method

.method public static native appCRC()Ljava/lang/String;
.end method

.method public static native checkSignature(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native licence()Ljava/lang/String;
.end method

.method public static native urlTg()Ljava/lang/String;
.end method
