.class Lorg/flerovium/settings/deviceinfo/UsbSettings$3;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/deviceinfo/UsbSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/deviceinfo/UsbSettings;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/deviceinfo/UsbSettings;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lorg/flerovium/settings/deviceinfo/UsbSettings$3;->this$0:Lorg/flerovium/settings/deviceinfo/UsbSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 312
    iget-object v0, p0, Lorg/flerovium/settings/deviceinfo/UsbSettings$3;->this$0:Lorg/flerovium/settings/deviceinfo/UsbSettings;

    # getter for: Lorg/flerovium/settings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lorg/flerovium/settings/deviceinfo/UsbSettings;->access$300(Lorg/flerovium/settings/deviceinfo/UsbSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 313
    return-void
.end method
