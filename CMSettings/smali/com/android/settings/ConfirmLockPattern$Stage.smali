.class final enum Lorg/flerovium/settings/ConfirmLockPattern$Stage;
.super Ljava/lang/Enum;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/ConfirmLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/flerovium/settings/ConfirmLockPattern$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/flerovium/settings/ConfirmLockPattern$Stage;

.field public static final enum LockedOut:Lorg/flerovium/settings/ConfirmLockPattern$Stage;

.field public static final enum NeedToUnlock:Lorg/flerovium/settings/ConfirmLockPattern$Stage;

.field public static final enum NeedToUnlockWrong:Lorg/flerovium/settings/ConfirmLockPattern$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lorg/flerovium/settings/ConfirmLockPattern$Stage;

    const-string v1, "NeedToUnlock"

    invoke-direct {v0, v1, v2}, Lorg/flerovium/settings/ConfirmLockPattern$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/flerovium/settings/ConfirmLockPattern$Stage;->NeedToUnlock:Lorg/flerovium/settings/ConfirmLockPattern$Stage;

    .line 63
    new-instance v0, Lorg/flerovium/settings/ConfirmLockPattern$Stage;

    const-string v1, "NeedToUnlockWrong"

    invoke-direct {v0, v1, v3}, Lorg/flerovium/settings/ConfirmLockPattern$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/flerovium/settings/ConfirmLockPattern$Stage;->NeedToUnlockWrong:Lorg/flerovium/settings/ConfirmLockPattern$Stage;

    .line 64
    new-instance v0, Lorg/flerovium/settings/ConfirmLockPattern$Stage;

    const-string v1, "LockedOut"

    invoke-direct {v0, v1, v4}, Lorg/flerovium/settings/ConfirmLockPattern$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/flerovium/settings/ConfirmLockPattern$Stage;->LockedOut:Lorg/flerovium/settings/ConfirmLockPattern$Stage;

    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/flerovium/settings/ConfirmLockPattern$Stage;

    sget-object v1, Lorg/flerovium/settings/ConfirmLockPattern$Stage;->NeedToUnlock:Lorg/flerovium/settings/ConfirmLockPattern$Stage;

    aput-object v1, v0, v2

    sget-object v1, Lorg/flerovium/settings/ConfirmLockPattern$Stage;->NeedToUnlockWrong:Lorg/flerovium/settings/ConfirmLockPattern$Stage;

    aput-object v1, v0, v3

    sget-object v1, Lorg/flerovium/settings/ConfirmLockPattern$Stage;->LockedOut:Lorg/flerovium/settings/ConfirmLockPattern$Stage;

    aput-object v1, v0, v4

    sput-object v0, Lorg/flerovium/settings/ConfirmLockPattern$Stage;->$VALUES:[Lorg/flerovium/settings/ConfirmLockPattern$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/flerovium/settings/ConfirmLockPattern$Stage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    const-class v0, Lorg/flerovium/settings/ConfirmLockPattern$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/flerovium/settings/ConfirmLockPattern$Stage;

    return-object v0
.end method

.method public static values()[Lorg/flerovium/settings/ConfirmLockPattern$Stage;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lorg/flerovium/settings/ConfirmLockPattern$Stage;->$VALUES:[Lorg/flerovium/settings/ConfirmLockPattern$Stage;

    invoke-virtual {v0}, [Lorg/flerovium/settings/ConfirmLockPattern$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/flerovium/settings/ConfirmLockPattern$Stage;

    return-object v0
.end method
