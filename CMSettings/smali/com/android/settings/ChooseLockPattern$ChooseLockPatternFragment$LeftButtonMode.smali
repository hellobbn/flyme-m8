.class final enum Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
.super Ljava/lang/Enum;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LeftButtonMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum Cancel:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum CancelDisabled:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum Gone:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum Retry:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum RetryDisabled:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;


# instance fields
.field final enabled:Z

.field final text:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 213
    new-instance v0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string v1, "Cancel"

    const v2, 0x7f0904cf

    invoke-direct {v0, v1, v3, v2, v4}, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 214
    new-instance v0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string v1, "CancelDisabled"

    const v2, 0x7f0904cf

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->CancelDisabled:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 215
    new-instance v0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string v1, "Retry"

    const v2, 0x7f09082f

    invoke-direct {v0, v1, v5, v2, v4}, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 216
    new-instance v0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string v1, "RetryDisabled"

    const v2, 0x7f09082f

    invoke-direct {v0, v1, v6, v2, v3}, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->RetryDisabled:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 217
    new-instance v0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string v1, "Gone"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 212
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->CancelDisabled:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v5

    sget-object v1, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->RetryDisabled:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v6

    sget-object v1, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v7

    sput-object v0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->$VALUES:[Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .param p3, "text"    # I
    .param p4, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .prologue
    .line 224
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 225
    iput p3, p0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->text:I

    .line 226
    iput-boolean p4, p0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->enabled:Z

    .line 227
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 212
    const-class v0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    return-object v0
.end method

.method public static values()[Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->$VALUES:[Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    invoke-virtual {v0}, [Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    return-object v0
.end method
