.class Lorg/flerovium/settings/notification/DropDownPreference$2;
.super Ljava/lang/Object;
.source "DropDownPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/notification/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/notification/DropDownPreference;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/notification/DropDownPreference;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lorg/flerovium/settings/notification/DropDownPreference$2;->this$0:Lorg/flerovium/settings/notification/DropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/flerovium/settings/notification/DropDownPreference$2;->this$0:Lorg/flerovium/settings/notification/DropDownPreference;

    # getter for: Lorg/flerovium/settings/notification/DropDownPreference;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lorg/flerovium/settings/notification/DropDownPreference;->access$000(Lorg/flerovium/settings/notification/DropDownPreference;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 69
    const/4 v0, 0x1

    return v0
.end method