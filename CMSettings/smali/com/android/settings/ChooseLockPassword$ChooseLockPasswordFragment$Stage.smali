.class public final enum Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
.super Ljava/lang/Enum;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum ConfirmWrong:Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum Introduction:Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum NeedToConfirm:Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;


# instance fields
.field public final alphaHint:I

.field public final buttonText:I

.field public final numericHint:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const v5, 0x7f090556

    const/4 v15, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 146
    new-instance v0, Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const-string v1, "Introduction"

    const v3, 0x7f090813

    const v4, 0x7f090815

    invoke-direct/range {v0 .. v5}, Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 150
    new-instance v6, Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const-string v7, "NeedToConfirm"

    const v9, 0x7f090816

    const v10, 0x7f090818

    const v11, 0x7f090561

    invoke-direct/range {v6 .. v11}, Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 154
    new-instance v9, Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const-string v10, "ConfirmWrong"

    const v12, 0x7f090819

    const v13, 0x7f09081a

    move v11, v15

    move v14, v5

    invoke-direct/range {v9 .. v14}, Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v9, Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 144
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    aput-object v1, v0, v2

    sget-object v1, Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    aput-object v1, v0, v8

    sget-object v1, Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    aput-object v1, v0, v15

    sput-object v0, Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->$VALUES:[Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p3, "hintInAlpha"    # I
    .param p4, "hintInNumeric"    # I
    .param p5, "nextButtonText"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 159
    iput p3, p0, Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    .line 160
    iput p4, p0, Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    .line 161
    iput p5, p0, Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    .line 162
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 144
    const-class v0, Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object v0
.end method

.method public static values()[Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->$VALUES:[Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v0}, [Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/flerovium/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object v0
.end method
