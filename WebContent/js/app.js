document.querySelectorAll('.sidebar-submenu').forEach(e => {
    e.querySelector('.sidebar-menu-dropdown').onclick = (event) => {
        event.preventDefault()
        e.querySelector('.sidebar-menu-dropdown .dropdown-icon').classList.toggle('active')

        let dropdown_content = e.querySelector('.sidebar-menu-dropdown-content')
        let dropdown_content_lis = dropdown_content.querySelectorAll('li')

        let active_height = dropdown_content_lis[0].clientHeight * dropdown_content_lis.length

        dropdown_content.classList.toggle('active')

        dropdown_content.style.height = dropdown_content.classList.contains('active') ? active_height + 'px' : '0'
    }
})

let category_options = {
    series: [44, 55, 41, 17],
    labels: ['Cloths', 'Devices', 'Bags', 'Watches'],
    chart: {
        type: 'donut',
    },
    colors: ['#6ab04c', '#2980b9', '#f39c12', '#d35400']
}

let category_chart = new ApexCharts(document.querySelector("#category-chart"), category_options)
category_chart.render()

let customer_options = {
    series: [{
        name: "Store Customers",
        data: [40, 70, 20, 90, 36, 80, 30, 91, 60]
    },{
        name: "Online Customers",
        data: [20, 30, 10, 20, 16, 40, 20, 51, 10]
    }],
    colors: ['#6ab04c', '#2980b9'],
    chart: {
        height: 350,
        type: 'line',
    },
    dataLabels: {
        enabled: false
    },
    stroke: {
        curve: 'smooth'
    },
    xaxis: {
        categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep'],
    },
    legend: {
        position: 'top'
    }
}

let customer_chart = new ApexCharts(document.querySelector("#customer-chart"), customer_options)
customer_chart.render()

setDarkChart = (dark) => {
    let theme = {
        theme: {
            mode: dark ? 'dark' : 'light'
        }
    }

    customer_chart.updateOptions(theme)
    category_chart.updateOptions(theme)
} 

// DARK MODE TOGGLE
let darkmode_toggle = document.querySelector('#darkmode-toggle')

darkmode_toggle.onclick = (e) => {
    e.preventDefault()
    document.querySelector('body').classList.toggle('dark')
    darkmode_toggle.querySelector('.darkmode-switch').classList.toggle('active')
    setDarkChart(document.querySelector('body').classList.contains('dark'))
}

let overlay = document.querySelector('.overlay')
let sidebar = document.querySelector('.sidebar')

document.querySelector('#mobile-toggle').onclick = () => {
    sidebar.classList.toggle('active')
    overlay.classList.toggle('active')
}

document.querySelector('#sidebar-close').onclick = () => {
    sidebar.classList.toggle('active')
    overlay.classList.toggle('active')
}

//for select
document.querySelectorAll('.custom-select').forEach(setupSelector);

function setupSelector(selector) {
  selector.addEventListener('change', e => {
    console.log('changed', e.target.value)
  })

  selector.addEventListener('mousedown', e => {
    if(window.innerWidth >= 420) {// override look for non mobile
      e.preventDefault();

      const select = selector.children[0];
      const dropDown = document.createElement('ul');
      dropDown.className = "selector-options";

      [...select.children].forEach(option => {
        const dropDownOption = document.createElement('li');
        dropDownOption.textContent = option.textContent;

        dropDownOption.addEventListener('mousedown', (e) => {
          e.stopPropagation();
          select.value = option.value;
          selector.value = option.value;
          select.dispatchEvent(new Event('change'));
          selector.dispatchEvent(new Event('change'));
          dropDown.remove();
        });

        dropDown.appendChild(dropDownOption);   
      });

      selector.appendChild(dropDown);

      // handle click out
      document.addEventListener('click', (e) => {
        if(!selector.contains(e.target)) {
          dropDown.remove();
        }
      });
    }
  });
}

//page 500
$(function() {
	  setTimeout(function(){
	    $('body').removeClass('loading');
	  }, 1000);
	});
