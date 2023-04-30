class Admin::ApplicationSettingsController < Admin::BaseController
  def edit
    @application_setting = Admin::ApplicationSetting.first
  end

  def update
    @application_setting = Admin::ApplicationSetting.first

    respond_to do |format|
        if @application_setting.update(application_setting_params)
          format.html { redirect_to @application_setting, notice: 'Application setting was successfully updated.' }
          format.json { render :edit, status: :updated, location: @application_setting }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @application_setting.errors, status: :unprocessable_entity }
        end
      end
  end

  private

  def application_setting_params
    params.require(:admin_application_setting).permit(:allow_create_new_user)
  end
end
