.class public final enum Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;
.super Ljava/lang/Enum;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ChoiceConfirmed:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ChoiceTooShort:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ConfirmWrong:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum FirstChoiceValid:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum HelpScreen:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum Introduction:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum NeedToConfirm:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;


# instance fields
.field final footerMessage:I

.field final headerMessage:I

.field final leftMode:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field final patternEnabled:Z

.field final rightMode:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 261
    new-instance v0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "Introduction"

    const/4 v2, 0x0

    const v3, 0x7f090826

    sget-object v4, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ContinueDisabled:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 265
    new-instance v0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "HelpScreen"

    const/4 v2, 0x1

    const v3, 0x7f09083a

    sget-object v4, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Ok:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 268
    new-instance v0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "ChoiceTooShort"

    const/4 v2, 0x2

    const v3, 0x7f090829

    sget-object v4, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ContinueDisabled:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 272
    new-instance v0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "FirstChoiceValid"

    const/4 v2, 0x3

    const v3, 0x7f09082a

    sget-object v4, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 275
    new-instance v0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "NeedToConfirm"

    const/4 v2, 0x4

    const v3, 0x7f09082b

    sget-object v4, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ConfirmDisabled:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 279
    new-instance v0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "ConfirmWrong"

    const/4 v2, 0x5

    const v3, 0x7f090824

    sget-object v4, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ConfirmDisabled:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 283
    new-instance v0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "ChoiceConfirmed"

    const/4 v2, 0x6

    const v3, 0x7f09082c

    sget-object v4, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 259
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v1, 0x0

    sget-object v2, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    sput-object v0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->$VALUES:[Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V
    .locals 0
    .param p3, "headerMessage"    # I
    .param p4, "leftMode"    # Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
    .param p5, "rightMode"    # Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;
    .param p6, "footerMessage"    # I
    .param p7, "patternEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;",
            "Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 298
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 299
    iput p3, p0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    .line 300
    iput-object p4, p0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 301
    iput-object p5, p0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 302
    iput p6, p0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    .line 303
    iput-boolean p7, p0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->patternEnabled:Z

    .line 304
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 259
    const-class v0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method

.method public static values()[Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1

    .prologue
    .line 259
    sget-object v0, Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->$VALUES:[Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0}, [Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/flerovium/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method
