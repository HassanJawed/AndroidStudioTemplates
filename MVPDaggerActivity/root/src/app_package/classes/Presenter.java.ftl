package ${packageName};

import javax.inject.Inject;

public class ${presenterClass} implements ${contractClass}.Presenter
{

	private ${contractClass}.View view;

	@Inject
	public ${presenterClass} () {

	}

	@Override
    public void takeView(${contractClass}.View view) {
        this.view = view;
    }

    @Override
    public void dropView() {

    }
}