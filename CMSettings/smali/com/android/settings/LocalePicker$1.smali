.class Lorg/flerovium/settings/LocalePicker$1;
.super Ljava/lang/Object;
.source "LocalePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/LocalePicker;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/LocalePicker;

.field final synthetic val$dialogId:I


# direct methods
.method constructor <init>(Lorg/flerovium/settings/LocalePicker;I)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lorg/flerovium/settings/LocalePicker$1;->this$0:Lorg/flerovium/settings/LocalePicker;

    iput p2, p0, Lorg/flerovium/settings/LocalePicker$1;->val$dialogId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lorg/flerovium/settings/LocalePicker$1;->this$0:Lorg/flerovium/settings/LocalePicker;

    iget v1, p0, Lorg/flerovium/settings/LocalePicker$1;->val$dialogId:I

    invoke-virtual {v0, v1}, Lorg/flerovium/settings/LocalePicker;->removeDialog(I)V

    .line 101
    iget-object v0, p0, Lorg/flerovium/settings/LocalePicker$1;->this$0:Lorg/flerovium/settings/LocalePicker;

    invoke-virtual {v0}, Lorg/flerovium/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 102
    iget-object v0, p0, Lorg/flerovium/settings/LocalePicker$1;->this$0:Lorg/flerovium/settings/LocalePicker;

    # getter for: Lorg/flerovium/settings/LocalePicker;->mTargetLocale:Ljava/util/Locale;
    invoke-static {v0}, Lorg/flerovium/settings/LocalePicker;->access$000(Lorg/flerovium/settings/LocalePicker;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lorg/flerovium/settings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 103
    return-void
.end method
